<!DOCTYPE html>
<html>
<head>
    <title>Add Task</title>
</head>
<body>

<h2>Add Daily Task</h2>

<form action="addTask" method="post">
    Task Name:
    <input type="text" name="task" required><br><br>

    Category:
    <select name="category">
        <option>Work</option>
        <option>Study</option>
        <option>Personal</option>
    </select><br><br>

    Status:
    <select name="status">
        <option>Completed</option>
        <option>Pending</option>
    </select><br><br>

    <button>Add Task</button>
</form>

</body>
</html>
