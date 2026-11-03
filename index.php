<?php

        require_once "config.php";

        function h ($str){
            return htmlspecialchars($str ?? '', ENT_QUOTES, 'UTF-8');
        }

        $errors = [];

        if($_SERVER['REQUEST_METHOD'] === "POST"){
            $uname = $_POST['uname'];
            $password = $_POST['password'];

            $stmt = $conn->prepare("SELECT * FROM users WHERE username=?");
            $stmt->bind_param('s',$uname);
            $stmt->execute();

            $result = $stmt->get_result();

            $user = $result->fetch_assoc();

            $stmt->close();


            if($user && $password === $user['password']){
                if($user['status'] !== "approved"){
                    $errors[] = "Your account has not been approved by the admin.";
            }else{
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['username'] = $user['username'];
                $_SESSION['user_role'] = $user['role'];

                header('location: dashboard.php');

                exit;
            }
            }else{
                $errors[] = "Invalid username or password.";
            
                }
        }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Clothing Store </h1>
    <h2>Sign In to your Account </h2>
    <br>
    <?php foreach ($errors as $e): ?>
        <p style="color: red;"><?= h($e)?></p>
    <?php endforeach;?>
    <form action="" method="post">
        <label for="">Username:</label>
        <input type="text" name="uname" id="" placeholder="Enter Username" required autofocus>
        <br>
        <label for="">Password:</label>
        <input type="password" name="password" id="" placeholder="Enter Password" required>
        <br><br>
        <input type="submit" value="Sign In">
        
    </form>
    <br><br>
    <p> No Account? <a href="register.php">Register</a></p>
</body>
</html>