# -Get user name and make user input variable
# -split name at space and reverse array of strings
# -join strings back togather
# -make method that switches $vowels
# -make method that switches consants.
# -loop through string and look at letters
#   -if letter is vowel
#     -switch vowel method
#   -elsif letter is z
#     -replace with a
#   -elsif letter is " "
#     -letter = " "
#   -else
#     -switch consonants method
$vowels = %w(a e i o u)
$alias_list = Hash.new

def alias_manager (agent_name)
  $alias_list[agent_name] = letter_switcher(agent_name)
end

def letter_switcher(agent_name)
  reverse_name = agent_name.split(' ').reverse.join(' ')
  new_alias = []
  reverse_array = reverse_name.split(//)
  reverse_array.each do |letter|
    if letter == letter.upcase
      if $vowels.include?(letter.downcase)
        new_alias << vowel_switcher(letter).upcase
      else
        new_alias << consants_switcher(letter).upcase
      end
    else
      if $vowels.include?(letter.downcase)
        new_alias << vowel_switcher(letter)
      else
        new_alias << consants_switcher(letter)
      end
    end
  end
  puts new_alias.join(" ")
end

def vowel_switcher (letter)
  # vowels = %w(a e i o u)
  i = 0
  while i < ($vowels.length)
    if $vowels[i] == letter.downcase
      return $vowels[i + 1]
      i += 1
    elsif letter.downcase == "u"
        return $vowels[0]
        i += 1
    else
      i += 1
    end
  end
end

def consants_switcher (letter)
  if letter.downcase == "z"
    return "a"
  elsif letter == " "
    return " "
  elsif letter == "'"
    return "'"
  else
    return letter.downcase.next
  end
end

def interface
  puts "What is your name agent?"
  agent_name = gets.chomp
  "your new alias is #{letter_switcher(agent_name)}. Would you like to store this info into the database?"
end

alias_manager("Shawn O'Connor")
puts $alias_list