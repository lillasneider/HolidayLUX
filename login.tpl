<!DOCTYPE html>
<html>
<head>
    <meta charset=”utf-8”>
    <title>LOG IN</title>
    <link rel="stylesheet" href="./css/shared.css">
<link rel="stylesheet" href="./css/login.css">
</head>
  <header>
      <div class="row">
          <div class="logo">
              <img src="./images/lux3.png">
          </div>
          <nav>
          <ul class="main-nav">
              <li><a href="index.php"> Home </a></li>
              <li><a href="index.php?p=places"> Places to go </a></li>
              <li><a href="index.php"> Things to do </a></li>
              <li>
                  <div class="dropdown">
                      <button class="dropbtn">Account menu</button>
                      <div class="dropdown-content">
                          {if $user_data}
                              <a href="index.php?p=logout"> Log out </a>
                          {else}
                              <a href="index.php?p=signup"> Sign up </a>
                              <a href="index.php?p=login"> Log in </a>
                          {/if}
                      </div>
                  </div>
              </li>
          </ul>
        </nav>
      </div>
      <div class="overlay">
          <h1>HolidayLUX</h1>
      </div>

<form method="post">


  <div class="container">
    {if $error}
          <div class="alert alert-danger" role="alert">
              {$error}
          </div>
    {/if}
    <h1>Log In</h1>
    <label for="email"><b>Username</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button class="login-button" type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>
</form>
</header>
</html>
