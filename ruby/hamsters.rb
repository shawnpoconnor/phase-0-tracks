def get_hamster_info
  puts "what is this hamster's name?"
  name = gets.chomp

  puts "on a scale of 1-10 how loud is this hamster?"
  volume = gets.chomp

  puts "what is the hamster's fur color?"
  fur_color = gets.chomp

  puts "how old is yo hamster?"
  age = gets.chomp
  if age.empty?
    age = nil
  else
    age = age.to_i
  end

  puts "Is your hamster good for adoption?"
  good_for_adoption = gets.chomp

  puts "Hamster's Name: #{name}"
  puts "Hamster's volume levle #{volume.to_i}"
  puts "Fur color: #{fur_color}"
  puts "Estamated hamster age: #{age}"
  puts "Good for adoption?: #{good_for_adoption}"

end

get_hamster_info