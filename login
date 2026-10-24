<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmartCare - Login</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f0f2f5; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .login-box { background: white; padding: 35px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); width: 100%; max-width: 380px; border-top: 5px solid #1b5e20; }
        h2 { color: #1b5e20; text-align: center; margin-bottom: 5px; }
        p.subtitle { text-align: center; color: #666; font-size: 13px; margin-bottom: 25px; }
        label { font-weight: 600; font-size: 14px; color: #333; display: block; margin-top: 10px; }
        input[type="text"], input[type="password"] { width: 100%; padding: 12px; margin: 8px 0 15px 0; border: 1px solid #ccc; border-radius: 6px; box-sizing: border-box; }
        button { width: 100%; background: #2e7d32; color: white; border: none; padding: 12px; font-size: 16px; font-weight: bold; border-radius: 6px; cursor: pointer; transition: 0.3s; margin-top: 10px; }
        button:hover { background: #1b5e20; }
        .error-msg { background: #ffebee; color: #c62828; padding: 10px; border-radius: 5px; font-size: 13px; text-align: center; margin-bottom: 15px; border: 1px solid #ffcdd2; }
        .hint-box { background: #e8f5e9; border: 1px dashed #2e7d32; padding: 10px; border-radius: 5px; font-size: 12px; color: #1b5e20; margin-top: 20px; }
    </style>
</head>
<body>

<div class="login-box">
    <h2>SmartCare System</h2>
    <p class="subtitle">Please enter your credentials to login</p>

    {% if error %}
        <div class="error-msg">{{ error }}</div>
    {% endif %}

    <form action="/login" method="POST">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" placeholder="Enter Username" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter Password" required>

        <button type="submit">Login</button>
    </form>

    <div class="hint-box">
        <strong>Default Login Credentials:</strong><br>
        Username: <code>admin</code> | Password: <code>admin123</code><br>
        Username: <code>user</code> | Password: <code>user123</code>
    </div>
</div>

</body>
</html>
