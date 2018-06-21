
var carData;
var userData;

function showCars(){
 var cars=[];
 var carpopups=[];
 carData.pop();
 carData.map(function(x){var e=`<div class="col-sm-5 col-md-5 col-lg-5 car">
                                    <a href="#popup${x.id}">
 	                            <!-- img class="dummyimage" src="../pics/${x.img}" / -->
 	                            <p>${x.car_manufacturer} ${x.car_model}</p>
 	                            <p>${x.car_class} kW</p>
 	                            <p>${x.car_regdate}</p>   
                                    </a>
                                    
                                    <div id="cancel${x.carId}"></div>
 	                            </div>
                                    
 	                           `;
                             var popup=`<div id="popup${x.id}" class="modalbox">
                                         <form  action="booking.php" method="post" >
                                         <p>Card: <select name="card"><option value="visa">Visa</option>
                                               <option value="master">Master</option>
                                         </select>
                                         </p>  
                                         <p>Card Number: <input name="cardNumber" type="number" /></p>
                                         <p>Customer: ${userData.userName}</p><!-- has to be changed-->
                                         <p>${x.car_manufacturer} ${x.car_model}
                                            <input type="text" style="display:none;" name="carId" value="${x.id}"/>
                                            <input type="text" style="display:none;" name="user" value="${userData.userName}"/> 
                                         </p>
                                         <p>Renting Date:
                                             Month<select name="rentMonth"><option value="1">January</option>
                                                    <option value="2">February</option>
                                                    <option value="3">March</option>
                                                    <option value="4">April</option>
                                                    <option value="5">May</option>
                                                    <option value="6">June</option>
                                                    <option value="7">July</option>
                                                    <option value="9">September</option> 
                                                    <option value="10">October</option>
                                                    <option value="11">November</option>
                                                    <option value="8">August</option>
                                                    <option value="12">December</option> 
                                            </select> 
                                            Day<input name="rentDay" type="number"/>
                                            Year<input name="rentYear" type="number"/>  
                                         </p>
                                         <p><button type="submit">Book</button>&nbsp;
                                                  <a href="#cancel${x.carId}">Cancel</a></p> 
                                         </form>
                                         </div>
                                       `; 
 	                     cars.push(e);      
                             carpopups.push(popup);
                        });	
 //console.log(cars.join(''));
 $("#showCars").html(cars.join(''));	 
 $("#popups").html(carpopups.join(''));	
}

function parseCarData(){	
 var json=localStorage.getItem("carJson");
 if(!json!==null)
  {var p=JSON.parse(json);
   carData=p.cars;
   userData=p.user; 
   $('#loggedUser').text(userData.userName);
   $('#registerButton').text('');
  }
}

setTimeout(parseCarData,1500);
setTimeout(showCars,1600);

