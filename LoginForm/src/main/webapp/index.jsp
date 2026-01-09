<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <style>
        * {
            box-sizing: border-box;
            font-family: "Segoe UI", Arial, sans-serif;
        }

        body {
            margin: 0;
            height: 100vh;
            background: linear-gradient(135deg, #fff9db, #fff3bf);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background: #ffffff;
            width: 360px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #3f3f3f;
        }

        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #5a5a5a;
        }

        input {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #e5e5e5;
        }

        input:focus {
            outline: none;
            border-color: #facc15;
        }

        .login-btn {
            width: 100%;
            background: #facc15;
            border: none;
            padding: 12px;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
        }

        .login-btn:hover {
            background: #eab308;
        }

        .signup-link {
            margin-top: 15px;
            text-align: center;
            font-size: 14px;
        }

        .signup-link a {
            color: #ca8a04;
            text-decoration: none;
            font-weight: 600;
        }

        .error-message {
            text-align: center;
            margin-top: 10px;
            color: #dc2626;
        }
    </style>
</head>

<body>

<div class="login-container">
    <h2>Login</h2>

    <form action="login" method="post">
        <div class="form-group">
            <label>Username</label>
            <input type="text" name="username" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" required>
        </div>

        <button class="login-btn">Login</button>
    </form>

    <div class="signup-link">
        New user? <a href="signup.jsp">Create an account</a>
    </div>

    <div class="error-message">
        ${message}
    </div>
</div>

</body>
</html>