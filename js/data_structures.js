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

// function makeObject (object, colors, horses)
//   for (var i = 0; i < horses.length; i++) {
//     object[horses[i]] = colors[i];
//     console.log(object)
//   };