var warmColors = ["red", "yellow", "burnt sienna", "Orange"];
var coolHorses = ['Peaches', 'Gary', 'Colonel', 'Steve-dave'];
var colorfulHorses = {};
function addColor(color) {
  warmColors.push(color);
  console.log(warmColors);
};

function addHorse (horse) {
  coolHorses.push(horse);
  console.log(coolHorses);
};

addColor("blurple");
addHorse("Trevor");

for (var i = 0; i < coolHorses.length; i++) {
  colorfulHorses[coolHorses[i]] = warmColors[i];
}
console.log(colorfulHorses);

function makeCar(make, model, color, size) {
  console.log("Assembling yourrrrr neeeeewww carrrrrrr!!!")
  this.make = make;
  this.model = model;
  this.color = color;
  this.size = size;
  this.vroom = function() {console.log("Vrooooooooom!"); };
  this.honk = function() {console.log("Beep! Beep!"); };
  this.bark = function() { console.log("Woof!"); };
}

var myCar = new makeCar("Ford", "Mustang", "Red", "Coop")
console.log(myCar.make)
myCar.vroom()
myCar.honk()
myCar.bark()

// var object = {
//     key1 = "hi"
//     key2 = "hello"
//     key3 = "hola"
// };

// for (var key in object) {
//   if (p.hasOwnProperty(key)) {
//     console.log(key + " -> " + p[key]);
//   }
// }