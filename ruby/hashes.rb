=begin
original work - line by line prompt, and push to hash.
def ask_questions
  user_info = {:Name, :Age, :Child_num, :Decor_theme}
  puts "Hello user, please fill out this short survey about your client's preferences."
  puts "What is the name of your client?"
  user_info[:Name] = gets.chomp


the client's information required for input:
client's name
client's age
number of children,
decor theme,
and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).
=end

#Iterating over a hash method!

  def assign_to_hash
  user_info = {"name" => nil, "age" => nil, "number_of_children" => nil, "desired_decor_theme" => nil}
    user_info.each do |key, value|
      puts "What is your client's #{key}?"
      user_info[key] = gets.chomp
      puts "Your client's #{key} is #{user_info[key]}."
    end
    p user_info
    puts "Would you like to update any bit of information? If so, enter Yes, if not enter No."
    response = gets.chomp.capitalize

    if response == "Yes"
      puts "Which information would you like to update: name, age, number of children, or desired decor theme?"
      choice = gets.chomp
      if choice == "name"
        puts "What name would you like to input?"
        user_info["name"] = gets.chomp
        puts "Your newly inputted name is #{user_info["name"]}."
      elsif choice == "age"
        puts "What age would you like to input?"
        user_info["age"] = gets.chomp
        puts "Your newly inputted name is #{user_info["age"]}."
      elsif choice == "number of children"
        puts "What number of children would you like to input?"
        user_info["number_of_children"] = gets.chomp
        puts "Your newly inputted name is #{user_info["number_of_children"]}."
      elsif choice == "desired decor theme"
        puts "What desired decor theme would you like to input?"
        user_info["desired_decor_theme"] = gets.chomp
        puts "Your newly inputted name is #{user_info["desired_decor_theme"]}."
      else
        puts "Guess we couldn't help you update your desired information."
      end
      p "This is your updated user info: #{user_info}."
    else
      p "This is your current user info: #{user_info}."
    end

  end


assign_to_hash

#Prompt the designer/user for all of this information.

#Convert any user input to the appropriate data type.

#Print the hash back out to the screen when the designer has answered all of the questions.

#Give the user the opportunity to update a key (no need to loop, once is fine). After all, #sometimes users make mistakes! If the designer says "none", skip it. But if the designer #enters "decor_theme" (for example), your program should ask for a new value and update #the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, #which would be quite handy here.) You can assume the user will correctly input a key #that exists in your hash -- no need to handle user errors.

#Print the latest version of the hash, and exit the program.