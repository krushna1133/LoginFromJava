package loginPage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDate;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddTaskServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        // Get existing session
        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("username") == null) {
            res.sendRedirect("index.jsp");
            return;
        }

        // ✅ username from session (only once)
        String username = session.getAttribute("username").toString();

        String task = req.getParameter("task");
        String category = req.getParameter("category");
        String status = req.getParameter("status");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/login_db",
                    "root",
                    "root"
            );

            String sql = "INSERT INTO tasks(username, task_name, category, status, task_date) VALUES(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, task);
            ps.setString(3, category);
            ps.setString(4, status);
            ps.setDate(5, java.sql.Date.valueOf(LocalDate.now()));

            ps.executeUpdate();

            ps.close();
            con.close();

            // Redirect back to dashboard servlet (not JSP)
            res.sendRedirect("dashboard");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
