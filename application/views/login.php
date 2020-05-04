<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/bootstrap/css/bootstrap.min.css">
    <!-- End Bootstrap -->
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/font-awesome/css/font-awesome.min.css">
    <!-- End Font Awesome -->

    <!-- CSS Style -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/style.css">
    <!-- End CSS Style -->
  </head>
  <body>
    <div class="col-md-4 col-md-offset-4 form-login">
      <div class="outter-form-login">
        <div class="logo-login">
          <em class="fa fa-user"></em>
        </div>
        <?php
          if (isset($error)) {
            echo $error;
          };
        ?>
        <form class="inner-login" action="<?php echo base_url(); ?>Login" method="post">
          <h3 class="text-center title-login">Login Admin</h3>
          <div class="form-group">
            <input type="text" name="username" placeholder="Username" class="form-control" autofocus>
            <?php echo form_error('username'); ?>
          </div>
          <div class="form-group">
            <input type="password" name="password" placeholder="Password" class="form-control">
            <?php echo form_error('password'); ?>
          </div>
          <input type="submit" name="btn-login" id="btn-login" class="btn btn-block btn-custom-green" value="LOGIN">
          <div class="text-center forget">
            <p>Forgot Password ?</p>
          </div>
        </form>
      </div>
    </div>

    <script src="<?php echo base_url(); ?>/assets/JQuery/jQuery-2.1.3.min.js" charset="utf-8"></script>
    <script src="<?php echo base_url(); ?>/assets/bootstrap/js/bootstrap.min.js" charset="utf-8"></script>
  </body>
</html>
