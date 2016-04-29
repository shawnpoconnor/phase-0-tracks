# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza").split(" ")
# steps:
  # define a method that creates a list
    #maybe using grocery_list = {}
    #populate new list by splitting string using .split
    #using .each and then block code that changes each element of array into key (item)
      #grocery_list(item) = 1
    # block code would specify
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
    #puts grocery_list
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: get userinput using gets.chomp
        #grocery_list(userinput) = default or specified
# output:  #puts grocery_list, "updated grocery list"

# Method to remove an item from the list
# input: hash key for item that is going to be deleted
# steps: grocery_list.delete("hash key specified")
# output:#puts grocery_list, "updated grocery list"

# Method to update the quantity of an item
# input: list, Item, new quantity
# steps: #grocery_list(userinput) = default or specified
# output:#puts grocery_list, "updated grocery list"

# Method to print a list and make it look pretty
# input: grocery_list
# steps: put each key/value to console
# output:grocery_list printed (and pretty...eventually)

grocery_list = Hash.new

def create_list (list, items)

  items = items.delete(",").split(" ")
  items.each {|item| list[item.to_sym] = 1}
end

def add_item(list, item, quantity = 1)
  list[item.to_sym] = quantity
end


def remove_item(list, item_to_be_removed)
  list.delete(item_to_be_removed.to_sym)
end

def update_list(list, item, item_quantity)
  list[item.to_sym] = item_quantity.to_i
end

def make_pretty_list(list)
  puts "\n LIST: \n "
  list.each { |item, quantity| puts " #{item} : #{quantity}" }
end


add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "ice cream", 4)
p grocery_list
remove_item(grocery_list, "lemonade")
p grocery_list
update_list(grocery_list, "ice cream", 1)
p grocery_list
make_pretty_list(grocery_list)

# p grocery_list

# create_list(grocery_list, "apple banana plums")

# p grocery_list

# add_item(grocery_list, "kiwi")

# p grocery_list

# remove_item(grocery_list, "kiwi")

# p grocery_list

# update_list(grocery_list, "plums", "3")

# p grocery_list

# make_pretty_list(grocery_list)
