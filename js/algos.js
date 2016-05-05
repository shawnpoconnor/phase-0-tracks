//                              **FUNCTION LIBRARY**
// ----------------------------------------------------------------------------------
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
**PSUDOCODE**
-- Function checks one object against another to see if there are matching key-value pairs, and returns an associated boolian
      1. Set matchingValue variable to false
      2. loop thorugh object1
          *loop through object2 checking for matching keys
            +if object1's key matches object2's key
              = if match object1 value with object2 value
                -set matchingValue to true
      3. return matchingValue

// =============================================
//                                **DRIVER/TESTING**
findLongestString(["long phrase","longest phrase","longer phrase"])

