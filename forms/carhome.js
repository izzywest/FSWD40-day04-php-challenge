
var carData;
var userData;

function showCars(){
 var cars=[];
 var carpopups=[];
 carData.pop();
 carData.map(function(x){var e=`<div class="col-sm-5 col-md-5 col-lg-5 car">
                                    <a href="#popup${x.carId}">
 	                            <img class="dummyimage" src="../pics/${x.img}" />
 	                            <p>${x.carType}</p>
 	                            <p>${x.power} kW</p>
 	                            <p>${x.prodYear}</p>   
                                    </a>
                                    
                                    <div id="cancel${x.carId}"></div>
 	                            </div>
                                    
 	                           `;
                             var popup=`<div id="popup${x.carId}" class="modalbox">
                                         <form method="post">
                                         <p>Card: <select><option>Visa</option>
                                               <option>Master</option>
                                         </select>
                                         </p>  
                                         <p>Card Number: <input type="number" /></p>
                                         <p>Owner: John Doe</p><!-- has to be changed-->
                                         <p><button type="submit">Book</button>&nbsp;<a href="#cancel${x.carId}">Cancel</a></p> 
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
 var p=JSON.parse(json);
 //console.log(JSON.stringify(p));
 carData=p.cars;
 userData=p.user;
 //document.write(json);
 alert(userData.userName);
 //console.log(json); 
//$('#loggedUser').text(userData.userName);
}

setTimeout(parseCarData,1500);
//setTimeout(showCars,1500);

