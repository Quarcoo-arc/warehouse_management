<?php

    require_once("include/connection.php");


    if(isset($_POST['submit']))
    {

        $username=$_POST['username'];
        $password=$_POST['password'];

        $hashed_password = hash(md5, $password);

        $query = "SELECT * FROM users where username ='$username' and password ='$hashed_password'; ";
        $result = mysqli_query($con,$query);
        
        $row = $result -> fetch_assoc();
        $count = count($row);

        if($count>0)
        {
            header("location: ./dashboard/index.php");
        }
        else
        {  
            
            echo '<script>alert("Invalid Username or password");</script>';

        }
    }
    else
    {
        echo ' Please check your codes! ';
    }


?>