<?php

function showRents($connect){
  $sql="select * from car_rent";
  $result=mysqli_query($connect,$sql);

  if(mysqli_num_rows($result)>0)
   {
   	while($row = mysqli_fetch_assoc($result))
   	           {
                $transactions=$row['transactions'];
                $fk_userID=$row['fk_userID'];
                $fk_carId=$row['fk_carId'];
                $rent_date=$row['rent_date'];
                echo "{ \"transactions\": $transactions, \"fk_userID\": \"$fk_userID\", \"fk_carId\": $fk_carId, \"rent_date\": $rent_date";
               }
    echo "{\"nothing\": 0}";          
   }	
 } 

?>