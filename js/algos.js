// **PSUDOCODE**
// -- Method finds longest word or phrase in grouping of strings
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
}

findLongestString(["long phrase","longest phrase","longer phrase"])