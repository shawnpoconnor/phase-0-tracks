# string = user imput

# encrypt method
#   while counter is shorter than length of word
#     look at number indexexed at counter and apply  .next

# decrypt method
#   while counter is shorter than length of word
#     look at number indexed and go back one letter value.


def encrypt (string)
  word_array = string.split(" ")
  word_index = 0
  while word_index < word_array.length
    letter_length = 0
    indexed_word = word_array[word_index]
    while letter_length < indexed_word.length
      indexed_word[letter_length] = indexed_word[letter_length].next
      letter_length += 1
    end
    word_index += 1
  end
  return word_array.join(" ")
end

# string = user imput

# encrypt method
#   while counter is shorter than length of word
#     look at number indexexed at counter and apply  .next

# decrypt method
#   while counter is shorter than length of word
#     look at number indexed and go back one letter value.


def encrypt (string)
  word_array = string.split(" ")
  word_index = 0
  while word_index < word_array.length
    letter_length = 0
    indexed_word = word_array[word_index]
    while letter_length < indexed_word.length
      #indexed_word[letter_length] = indexed_word[letter_length].next
      #"a".ord= 97
      dif = indexed_word[letter_length].ord - "a".ord  #indexed_word[letter_length] current letter being analyzed, subtracted by a set starting point.
      rem = (dif + 1) % 26 # modulo line: puts difference back at actual letter analyzed, and determines if there is a remainder.
      indexed_word[letter_length] = ("a".ord + rem).chr #adds remainder to set starting point, resetting the alphabet, and turning back from ordinance to character.

      #"z".ord = 122
      #26 letters in the alaphet
      #z to a 122 + 1 = 123 - 97 = 26 % 26 = 0

      letter_length += 1
    end
    word_index += 1
  end
  return word_array.join(" ")
end

 puts encrypt("xyz abc")


# string = user imput

# encrypt method
#   while counter is shorter than length of word
#     look at number indexexed at counter and apply  .next

# decrypt method
#   while counter is shorter than length of word
#     look at number indexed and go back one letter value.


def encrypt (string)
  word_array = string.split(" ")
  word_index = 0
  while word_index < word_array.length
    letter_length = 0
    indexed_word = word_array[word_index]
    while letter_length < indexed_word.length
      #indexed_word[letter_length] = indexed_word[letter_length].next
      #"a".ord= 97
      dif = indexed_word[letter_length].ord - "a".ord  #indexed_word[letter_length] current letter being analyzed, subtracted by a set starting point.
      rem = (dif + 1) % 26 # modulo line: puts difference back at actual letter analyzed, and determines if there is a remainder.
      indexed_word[letter_length] = ("a".ord + rem).chr #adds remainder to set starting point, resetting the alphabet, and turning back from ordinance to character.

      #"z".ord = 122
      #26 letters in the alaphet
      #z to a 122 + 1 = 123 - 97 = 26 % 26 = 0

      letter_length += 1
    end
    word_index += 1
  end
  return word_array.join(" ")
end

 puts encrypt("xyz abc")


def decrypt (string)
  word_array = string.split(" ")
  word_index = 0
  while word_index < word_array.length
    letter_length = 0
    indexed_word = word_array[word_index]
    while letter_length < indexed_word.length
      #indexed_word[letter_length] = indexed_word[letter_length].next
      #"a".ord= 97
      dif = indexed_word[letter_length].ord - "a".ord  #indexed_word[letter_length] current letter being analyzed, subtracted by a set starting point.
      rem = (dif - 1) % 26 # modulo line: puts difference back at actual letter analyzed, and determines if there is a remainder.
      indexed_word[letter_length] = ("a".ord + rem).chr #adds remainder to set starting point, resetting the alphabet, and turning back from ordinance to character.

      #"z".ord = 122
      #26 letters in the alaphet
      #z to a 122 + 1 = 123 - 97 = 26 % 26 = 0

      letter_length += 1
    end
    word_index += 1
  end
  return word_array.join(" ")
end

 puts decrypt("xyz abc")