package loginPage;

import java.io.IOException;
import java.sql.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DashboardServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("username") == null) {
            res.sendRedirect("index.jsp");
            return;
        }

        String username = session.getAttribute("username").toString();

        int completed = 0;
        int pending = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/login_db",
                    "root",
                    "root"
            );

            PreparedStatement ps = con.prepareStatement(
                "SELECT status, COUNT(*) FROM tasks WHERE username=? GROUP BY status"
            );
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                if (rs.getString("status").equals("Completed"))
                    completed = rs.getInt(2);
                else
                    pending = rs.getInt(2);
            }

            con.close();

            req.setAttribute("completed", completed);
            req.setAttribute("pending", pending);
            req.getRequestDispatcher("dashboard.jsp").forward(req, res);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
