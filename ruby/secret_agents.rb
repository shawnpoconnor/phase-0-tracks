# string = user imput

# encrypt method
#   while counter is shorter than length of word
#     look at number indexexed at counter and apply  .next

# decrypt method
#   while counter is shorter than length of word
#     look at number indexed and go back one letter value.

#Creating a user interface for the secret agent
def interface
  puts "Hello secret agent, would you like to decrypted or encrypt a password?(encrypt/decrypt)."

  user_input = gets.chomp

  if user_input == "encrypt"
    puts "Give me a new password to encrypt please."
    password = gets.chomp
    puts "This is your encrypted password: #{encrypt(password)}."

  elsif user_input == "decrypt"
    puts "What is your encrypted password?"
    password = gets.chomp
    puts "This is your decrypted password: #{decrypt(password)}."

  else
    puts "GIVE ME A REAL ANSWER"
    interface
  end
end

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

 # puts encrypt("xyz abc")


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

interface

