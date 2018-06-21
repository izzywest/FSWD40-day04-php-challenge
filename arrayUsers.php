<?php

function showUsers($connect){
  
  $user=intval ($_SESSION['user']);
  $sql="select userName, userEmail from users WHERE userId=$user";
  $result=mysqli_query($connect,$sql);

  if(mysqli_num_rows($result)>0)
   {
   	while($row = mysqli_fetch_assoc($result))
   	           {
                $userName=$row['userName'];
                echo " \"userName\": \"$userName\", \"userEmail\": $userEmail";
   }
 echo $user;
}
}
?>