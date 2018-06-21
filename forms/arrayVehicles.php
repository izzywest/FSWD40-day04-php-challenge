<?php

function showCars($connect){
  $sql="select * from vehicles";
  $result=mysqli_query($connect,$sql);

  if(mysqli_num_rows($result)>0)
   {
   	while($row = mysqli_fetch_assoc($result))
   	           {
                $id=$row['id'];
                $car_model=$row['car_model'];
                $car_class=$row['car_class'];
                $car_manufacturer=$row['car_manufacturer'];
                $car_regdate=$row['car_regdate'];
                echo "{ \"id\": $id, \"car_model\": \"$car_model\", \"car_class\": \"$car_class\", \"car_manufacturer\": \"$car_manufacturer\", \"car_regdate\": \"$car_regdate\"},";
               }
    echo "{\"nothing\": 0}";          
   }	
 } 

?>