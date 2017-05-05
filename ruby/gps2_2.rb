# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def create_list
  puts 'Please enter your grocery list, separate via space.'
  items = gets.chomp.split(' ')
  grossary_list  = {}
  index = 0 
  until items.length == index
    grossary_list[items[index]] = 1 
    index += 1
  end
  grossary_list
end

def item_and_qty (list)
  items  = ''
  until items == 'quit'
    puts "Type 'quit', on enter an item to adjust, with it's new amount."
    items = gets.chomp
    if items != 'quit'
      new_item = items.split(' ')
      list[new_item[0]]  = new_item[1]
    else
      break
    end
  end
list
end

def add_qty(list)
  new_list = {}
  list.each do |item , qty|
      puts "How many items from #{item} do wou wanna buy?" 
      new_list[item]  = gets.chomp
    end
    new_list
  end
  
def delete_item (list)
  item  = ''
  until item  == 'quit'
    puts "Which item you want to delete, if no then type quit"
    item  = gets.chomp
    if item != 'quit'
      list.delete(item)
    else
      break
    end
  end
  list
end
  
def print_list(list)
  puts 'This is your grocery list:'
  list.each {|item, qty| puts "#{qty} of #{item}"}
end
  

print_list(create_list)