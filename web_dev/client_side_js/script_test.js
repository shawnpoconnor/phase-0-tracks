console.log("The script is runnig!");

function textChanger(event) {
  randomColor= ["Gray", "Blue", "Red", "Yellow", "Green", "Teal", "Goldenrod"]
  var rand = randomColor[Math.floor(Math.random() * randomColor.length)];
  event.target.style.color = rand;
}



var title = document.getElementById("main");
title.addEventListener("click", textChanger);
