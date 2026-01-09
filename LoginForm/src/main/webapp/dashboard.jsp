<!DOCTYPE html>
<html>
<head>
    <title>Task Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<h2>Welcome, ${sessionScope.username}</h2>

<h2>Daily Task Summary</h2>

<canvas id="taskChart" width="300" height="300"></canvas>

<script>
    const data = {
        labels: ['Completed', 'Pending'],
        datasets: [{
            data: [${completed}, ${pending}],
            backgroundColor: ['#22c55e', '#facc15']
        }]
    };

    new Chart(document.getElementById('taskChart'), {
        type: 'pie',
        data: data
    });
</script>

<a href="task.jsp">Add New Task</a>

</body>
</html>
