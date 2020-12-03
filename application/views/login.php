<?php
/**
 * Created by PhpStorm.
 * User: GaoComet
 * Date: 12/1/2017
 * Time: 8:54 AM
 */
?>

<!DOCTYPE html>
<html>
<head>
    <title> Reddit Management Tool </title>
    <style>
        .form-control{
            height: 30px;
            width: 180px;
            border-radius: 3px;
            border-style: solid;
            border-width: 2px;
            border-color: gray;
        }
        form{
            padding-left: 10px;
            text-align: center;
            font-size: 20px;
        }
        p{
            text-align: center;
        }
    </style>
    <link rel="icon" href="<?php echo base_url(); ?>assets/images/logo.png">
</head>
<body style="background-image: url('<?php echo base_url()?>assets/images/sky.jpg'); background-size: 100%; margin: 0;">
<div style="padding-top: 10%; padding-left: 50%;">
    <div style=" width: 500px; height: 470px; background-color: darkblue;">
        <div style="width: 100%; padding-bottom: 7%">
            <img src="<?php echo base_url('assets/images/reddit1.png')?>" style="width: 100%">
        </div>
        <?php
        if(!empty($success_msg)){
            echo '<p class="statusMsg" style="color: #000000; margin-top: 0">' .$success_msg.'</p>';
        }elseif(!empty($error_msg)){
            echo '<p class="statusMsg" style="color: red; margin-top: 0">'.$error_msg.'</p>';
        }
        ?>
<!--        <p style="text-align: center; font-size: 30px; color: #dd7c00; padding-top: 8%;"> Aircraft </p>-->
        <div style="width: 50%; padding-left: 25%">
            <form action="" method="post" style="color: yellow;">
                User Name
                <input type="text" style="font-size: 20px;" id="user-name" class="form-control" name="user-name" required>
                <br><br>
                Password
                <input type="password" style="font-size: 20px;" id="user-password" class="form-control" name="user-password" required>
                <br>
                <input type="submit" class="btn-success" name="loginSubmit" id="login-button" value="Login" style="width: 100px;margin-top: 30px;">
            </form>
        </div>
    </div>
</div>

</body>
</html>