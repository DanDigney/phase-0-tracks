var colorArray = ["blue", "red", "green", "yellow"];
var nameArray = ["Bob", "Steve", "Larry", "Marge"];

colorArray.push("orange");
nameArray.push("Ed");

function makeObject(array1, array2) {
  var object = {};
  for (var x = 0; x < array1.length; x++) {
    object[array1[x]] = array2[x];
  }
  return object;
}
console.log(makeObject(nameArray, colorArray));

var fastCars = {name: "jeep", color: "red", year: 1990};

function createCar(name, color, year) {
  this.name = name;
  this.color = color;
  this.year = year;
  this.sound = function() {console.log("**honk**")};
}

var car = new createCar("bill", "red", 2020);
console.log(car.name);
car.sound();

var newCar = new createCar("tom", "blue", 1414);
console.log(newCar.name);
console.log(newCar.color);
console.log(newCar.year);

for (var key in fastCars) {
  console.log(key + "=>" + fastCars[key]);
}
