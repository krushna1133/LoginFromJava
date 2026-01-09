<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Dashboard</title>

    <style>
        * {
            box-sizing: border-box;
            font-family: "Segoe UI", Arial, sans-serif;
        }

        body {
            margin: 0;
            background: #f8fafc;
            color: #1f2937;
        }

        /* Header */
        .header {
            background: #facc15;
            padding: 16px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h2 {
            margin: 0;
            font-size: 20px;
        }

        .user {
            font-weight: 600;
        }

        .logout-btn {
            background: #ffffff;
            border: 2px solid #ca8a04;
            color: #ca8a04;
            padding: 6px 12px;
            border-radius: 6px;
            font-weight: 600;
            cursor: pointer;
            margin-left: 10px;
        }

        .logout-btn:hover {
            background: #fff7cc;
        }

        /* Content */
        .container {
            padding: 30px;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 20px;
        }

        .card {
            background: #ffffff;
            padding: 22px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        .card h3 {
            margin-top: 0;
            color: #ca8a04;
        }

        .card p {
            color: #4b5563;
            font-size: 14px;
            margin-bottom: 15px;
        }

        .action-btn {
            display: inline-block;
            background: #facc15;
            color: #3f3f3f;
            padding: 10px 16px;
            border-radius: 6px;
            font-weight: 600;
            text-decoration: none;
        }

        .action-btn:hover {
            background: #eab308;
        }
    </style>
</head>

<body>

<!-- Header -->
<div class="header">
    <h2>Project Management System</h2>
    <div class="user">
        Welcome, ${sessionScope.username}
        <form action="logout" method="post" style="display:inline;">
            <a href="index.jsp" class="logout-btn">Logout</a>
        </form>
    </div>
</div>

<!-- Main -->
<div class="container">
    <div class="cards">

        <!-- Dashboard -->
        <div class="card">
            <h3>📊 Dashboard</h3>
            <p>View task summary, progress charts, and daily analytics.</p>
            <a href="dashboard.jsp" class="action-btn">Open Dashboard</a>
        </div>

        <!-- Tasks -->
        <div class="card">
            <h3>📝 Task Manager</h3>
            <p>Add, track, and manage your daily activities easily.</p>
            <a href="task.jsp" class="action-btn">Manage Tasks</a>
        </div>

        <!-- Projects (future) -->
        <div class="card">
            <h3>📌 Projects</h3>
            <p>Create and manage projects (feature coming soon).</p>
            <a href="#" class="action-btn">Coming Soon</a>
        </div>

        <!-- Team (future) -->
        <div class="card">
            <h3>👥 Team</h3>
            <p>Collaborate with your team (feature coming soon).</p>
            <a href="#" class="action-btn">Coming Soon</a>
        </div>

    </div>
</div>

</body>
</html>
