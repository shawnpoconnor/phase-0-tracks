//                              **FUNCTION LIBRARY**
// ===============================================
// // **PSUDOCODE**
// -- Function finds longest word or phrase in grouping of strings
// 1.Set longestString variable to empty string
// 2. Loop through the array of words/phrases
//   * if the length of word/phrase is longer than longestString
//     + set longestString to word/phrase.d

longestString = ""
function findLongestString(wordsPhrases) {
  for(var i = 0; i < wordsPhrases.length; i++) {
    if(wordsPhrases[i].length > longestString.length) {
      longestString = wordsPhrases[i];
    }
  }
  console.log(longestString)
}

// --------------------------------------------------------------------------------
// **PSUDOCODE**
// -- Function checks one object against another to see if there are matching key-value pairs, and returns an associated boolian
// Double Loop method
//       1. Set matchingValue variable to false
//       2. loop thorugh object1
//           *loop through object2 checking for matching keys
//             +if object1's key matches object2's key
//               = if match object1 value with object2 value
//                 -set matchingValue to true
//       3. return matchingValue

// Single Loop method
// 1. set matchingValue variable to false
// 2. Loop through object one looking at each key
//   *if object1 indexed at key is equal to object 2 indexed at key
//     +set matchingValue to true
// 3.print matchingValue to console

function keyValueSame(object1, object2) {
  var isSame = false;
  for (var obj1Key in object1) {
    if (object2.hasOwnProperty(obj1Key)) {
      if (object1[obj1Key] === object2[obj1Key]) {
        isSame = true;
      };
    };
  };
console.log(isSame);
};

// --------------------------------------------------------------------------------
// **PSUDOCODE**
// -- Function populateRandWords that is (n) indexes long of random words of varing length.
//       1. set randomWords variable to empty array
//       2. run a for loop n times
//         *randWords gets outcome of generateWord function
//       3. console.log(randWords)

// -- Function generateRandWord
//       1. Set randNum variable to randomly generating number between 3-10
//       2. Set possibleLetters variable to a-z
//       3. Set newWord variable to empty string
//       4. run for loop randNum amout of times
//         *newWord gets random letter from possibleLetters
//       5.return newWord

function generateRandWord() {
  var randNum = (Math.floor((Math.random() * 10) + 1));
  var possibleLetters = "abcdefghijklmnopqrstuvwxyz";
  var newWord = "";
  for( var i=0; i < randNum; i++ ) {
    newWord += possibleLetters.charAt(Math.floor(Math.random() * possibleLetters.length));
   };
   console.log(newWord);
};

function populateRandWords(numberOfWords)
  randomWords = new Array();


// =============================================
//                                **DRIVER/TESTING**
// findLongestString(["long phrase","longest phrase","longer phrase"])

// var a = {
//     "age" : "55",
//     "height" : "6'",
//     "weight" : "200"
// };

// var b = {
//   "age" : "23",
//   "height" : "5'",
//   "weight" : "165"
//   }

// keyValueSame(b, a)

x = new Array();
x.push(1);
x.push(2);
console.log(x)