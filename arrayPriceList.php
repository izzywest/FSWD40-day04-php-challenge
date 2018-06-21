<?php

function showPrices($connect){
  $sql="select * from price_list
  $result=mysqli_query($connect,$sql);

  if(mysqli_num_rows($result)>0)
   {
   	while($row = mysqli_fetch_assoc($result))
   	           {
                $price_id=$row['price_id'];
                $price_value=$row['price_value'];
                $fk_carId=$row['fk_carId'];
                echo "{ \"price_id\": $price_id, \"price_value\": \"$price_value\", \"fk_carId\": $fk_carId";
               }
    echo "{\"nothing\": 0}";          
   }	
 } 

?>