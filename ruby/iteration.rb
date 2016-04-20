=begin
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

def good_enough

end