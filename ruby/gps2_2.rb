def create_list
  puts 'Please enter your grocery list, separate items via space.'
  items = gets.chomp.split(' ')
  grocery_list  = {}
  index = 0 
  until index == items.length
    grocery_list[items[index]] = 1 
    index += 1
  end
  grocery_list
end

def add_item (list)
  items  = ''
  until items == 'quit'
    puts "Enter a new item & amount, or type 'quit'."
    items = gets.chomp
    if items != 'quit'
      new_item = items.split(' ')
      if new_item.length > 2
        qty = new_item[-1]
        new_item.delete_at(-1)
        list[new_item.join(' ')] = qty
      else
        list[new_item[0]]  = new_item[-1]
      end
    end
  end
  list
end

def delete_item (list)
  item  = ''
  until item  == 'quit'
    puts "Enter the item you'd like to delete, else type 'quit'."
    item  = gets.chomp
    if item != 'quit'
      list.delete(item)
    else
      break
    end
  end
  list
end


def set_qty(list)
  new_list = {}
  list.each do |item , qty|
    puts "How many #{item} would you like?" 
    new_list[item]  = gets.chomp
  end
  new_list
end

def print_list(list)
  puts 'This is your grocery list:'
  list.each {|item, qty| puts "#{qty} - #{item}"}
end
  

print_list(set_qty(delete_item(add_item(create_list))))

# REFLECTION
=begin 
1) That pseduocoding helps break down the work load of a multi-step 
process.
2) I feel like hashes are much better at storing data in an intuitive
way, but I also feel like it's much easier to manipulate the data
within an array.
3) Nothing, unless you have it's value placed at the end - then the
end value.
4) Anything
5) By having the end value relate to something outside of the method.
6) How to manipulate information within a hash.
=end

# PSUEDOCODE
=begin 
make a list
  unlimited items
  user input
add items
  multi-word
  with value
delete items
  remove value as well
update item values
print list
=end