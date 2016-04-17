def get_vamp_info
  puts "Please list your allergies, type done to end"
  allergy = gets.chomp.downcase
  while true
    if allergy == "done"
      ask_questions
      break
    elsif allergy == "sunshine"
      puts "probably not a vampire"
      break
    else
      allergy = gets.chomp.downcase
    end
  end
end

def ask_questions
  puts "What is your name"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born"
  yob = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  eats_garlic = gets.chomp.downcase

  puts "would you like to enroll in the company's health insurance?"
  health_insureance = gets.chomp.downcase

  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."
  else
    if ((2016 - yob) == age) && ((eats_garlic == "yes") || (health_insureance == "yes"))
      puts "probably not a vampire"
    elsif ((2016 - yob) != age) && ((eats_garlic == "no") || (health_insureance == "no"))
      puts "probably a vampire"
    elsif ((2016 - yob) != age) && ((eats_garlic == "no") && (health_insureance == "no"))
      puts "Almost certainly a vampire"
    else
      puts "results inconslusive."
    end
  end
end

def vamp_processor
  puts "How many employees will be processed?"
  number_of_employees = gets.chomp.to_i
  number_of_employees.times do
    get_vamp_info
  end
end

vamp_processor
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."