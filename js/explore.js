// Create empty backwards string variable
// Loop through string from last index to first
//   -add each letter in the loop to empty string
//  print backwards string to console
var string = "hello";

function reverseWord(word) {
  var backwardsString = "";
  for (var i = word.length - 1; i >= 0; i--) {
    backwardsString = backwardsString + word[i];
  };
  console.log(backwardsString)
}

reverseWord(string);