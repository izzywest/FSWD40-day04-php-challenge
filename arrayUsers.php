<?php

function showCars($connect){
  $sql="select * from users";
  $result=mysqli_query($connect,$sql);

  if(mysqli_num_rows($result)>0)
   {
   	while($row = mysqli_fetch_assoc($result))
   	           {
                $userId=$row['userId'];
                $userName=$row['userName'];
                $userEmail=$row['userEmail'];
                $userPass=$row['userPass'];
                echo "{ \"userId\": $userId, \"userName\": \"$userName\", \"userEmail\": $userEmail, \"userPass\": $userPass";
               }
    echo "{\"nothing\": 0}";          
   }	
 } 

?>