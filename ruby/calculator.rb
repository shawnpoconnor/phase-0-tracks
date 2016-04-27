def calculate (integer1, operator, integer2)
  if operator == '+'
    return integer1 + integer2
  elsif operator == '-'
    return integer1 - integer2
  elsif operator == '*'
    return integer1 * integer2
  elsif operator == '/'
    return integer1 / integer2
  end
end

def interface
  puts "please enter a calculation(ex. '5+4')"
  calculation = gets.chomp
  calculation = calculation.split(//)
  if calculation.include?(" ")
    calculation = calculation.delete(" ")
  end
  calculate(calculation[0].to_i, calculation[1], calculation[2].to_i)
end

interface