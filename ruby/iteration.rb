=begin
>>>>>>> 4ccc719379b82180d1a51ca3027bc6e0cd4a5b6e
array = %w(hi bye goodbye adios ciao bonjour)
hash = {jaws: 9, weekend_at_bernies: 10, jurrasic_park: 9, how_high: 8.5, office_space: 8.5}

#unmodified .map
p array
array.map {|greeting| greeting = "Hello"}
p array


#modified .map!
p array
array.map! {|greeting| greeting = "Hello"}
p array


hash.each do |movie, rating|
  puts "#{movie} had a rating of #{rating} on the shawn and seth review"
end

array.each do |saying|
  puts "The saying, #{saying} is crazy, that bird is a liar, I'm Brian Fellows."
end
=end


def boggle_game
  words = %w(hi hello bart flip bat door cat rabbit poo fire hi techno pie shoe den errand tree worm hi cat)

  words.each do |word|
    if word.length < 4
      words.delete(word)
    end
  end
  p words
end
boggle_game


def good_enough
  even_numbers = []
  even_mult_4 = []
  numbers = (0..20).to_a
  #p numbers
  numbers.each do |num|
    if num.even? == true
      even_numbers << num
    end
    if num.even? == true && num % 4 == 0
      even_mult_4 << num

    end
  end
  puts "These are all the even numbers:"
  p even_numbers
  puts "These are all the even numbers, that are also multiples of the number 4:"
  p even_mult_4

end

good_enough
# def diff_method
  puts "Monkey brains"
  yield
  puts "don't you think?"
 end
diff_method {puts "are delicious"}
diff_method {puts "are not delicious"}

def party_sortr
  party_people = {"Shawn" => True, "seth" => False, "jerry" => False, "martha" => True}
  list = []
  party_people.each do |key, value|
    if party_people[value] == True
      list << party_people[key]
    end
  end
  puts list
end

#following method under CONSTRUCTION

# def devowelr (word)
#   vowels = %w(a e i o u)
#   word_array = word.split #["b", "a", "n", "a", "n", "a"]
#   idx = 0
#   vowel_idx = 0
#   #removed_vowels = []
#   while idx < word_array.length #idx < word_array.length #0 < 6
#     while vowel_idx < vowels.length
#       if word_array[idx] == vowels[vowel_idx]
#         puts "#{word_array}"
#         word_array[idx].delete!
#         puts "#{word_array}"
#       end
#       vowel_idx += 1
#     end
#     idx += 1
#   end
#   puts word_array.join
# end

# devowelr("banana")

def remover (array)
  while array.length > 3
    puts "array = #{array}"
    array.pop
    puts "array = #{array}"
  end
  puts array
end
remover(["hi", 1, 2, 3, 5, 5, 5, 5, 5, 5])