


<?php
  ob_start();
  require_once('includes/load.php');
  if($session->isUserLoggedIn(true)) { redirect('home.php', false);}
?>
<?php include_once('layouts/header.php'); ?>
<html>
<head>
<title>Login Inventory Management system</title>
</head>
<body style="background: url('loginbg.jpg') no-repeat center center fixed;
    background-size: cover;">
<div class="login-page">
    <div class="text-center">
    <div class="loginHeader">
            
            <h1 style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;color:black">COBRA</h1>
            <p style="font-size: 20px;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;color:black">INVENTORY MANAGEMENT SYSTEM </p>
     </div>
<div class="login-page">
    <div class="text-center">
       <h1>Welcome</h1>
       <p>Sign in to start your session</p>
     </div>
     <?php echo display_msg($msg); ?>
      <form method="post" action="auth_v2.php" class="clearfix">
        <div class="form-group">
              <label for="username" class="control-label">Username</label>
              <input type="name" class="form-control" name="username" placeholder="Username">
        </div>
        <div class="form-group">
            <label for="Password" class="control-label">Password</label>
            <input type="password" name= "password" class="form-control" placeholder="password">
        </div>
        <div class="form-group">
                <button type="submit" class="btn btn-info  pull-right">Login</button>
        </div>
    </form>
</div>
</body></html>