<?php

require_once('../include/connection.php');

$query="SELECT ID FROM users;";
$result = mysqli_query($con,$query);

if(!result){
    echo 'Please check your code!';
}
else{

        while($row=mysqli_fetch_assoc($result))
    {   
        $numOfUsers +=1;

    }
    
}


?>