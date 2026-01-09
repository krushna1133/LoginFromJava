<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>

    <style>
        body {
            margin: 0;
            height: 100vh;
            background: linear-gradient(135deg, #fff9db, #fff3bf);
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: "Segoe UI", Arial, sans-serif;
        }

        .signup-container {
            background: #ffffff;
            width: 380px;
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
            box-shadow: 0 0 0 2px rgba(250, 204, 21, 0.3);
        }

        .signup-btn {
            width: 100%;
            background: #facc15;
            border: none;
            padding: 12px;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .signup-btn:hover {
            background: #eab308;
        }

        .login-link {
            margin-top: 15px;
            text-align: center;
            font-size: 14px;
        }

        .login-link a {
            color: #ca8a04;
            font-weight: 600;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        .message {
            margin-top: 12px;
            text-align: center;
            color: #dc2626;
        }
    </style>
</head>

<body>

<div class="signup-container">
    <h2>Create Account</h2>

    <form action="signup" method="post">
        <div class="form-group">
            <label>Username</label>
            <input type="text" name="username" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" required>
        </div>

        <button class="signup-btn">Sign Up</button>
    </form>

    <div class="login-link">
        Already have an account? <a href="index.jsp">Login</a>
    </div>

    <div class="message">
        ${message}
    </div>
</div>

</body>
</html>
