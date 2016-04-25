def calculate (integer1 operator integer2)
  case operator
  when operator == '+'
    then integer1 + integer2
  when operator == '-'
    then integer1 - integer2
  when operator == '*'
    then integer1 * integer2
  when operator == '/'
    then integer1 / integer2
end