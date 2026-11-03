<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Good day!</h1>
    <p>Welcome, <?= htmlspecialchars($_SESSION['username'] ?? 'User'); ?>!</p>
    <br>
</body>