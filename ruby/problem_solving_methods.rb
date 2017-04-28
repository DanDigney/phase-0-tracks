# RELEASE 1
def search_array(method_array, method_number)
  index = 0 
  found = FALSE
  method_array.each do |nu|
    if nu == method_number
      found = TRUE
      break
    else 
      index += 1 
    end
  end
  if found 
    return index
  else
    return nil
  end
end

practice_array = [1, 2, 6, 45, 62, 999]
search_array(practice_array, 5)

# RELEASE 2
def fib(x)
  num1 = 0 
  num2 = 1 
  sum = num1 + num2
  fib_array = [num1]
  while x > 1
    fib_array << num2
    num1 = num2
    num2 = sum 
    sum = num1 + num2
    x -= 1
  end
  return fib_array
end

fib(100)

# VERIFY RELEASE 2
test_array = fib(100)
if test_array[-1] == 218922995834555169026
  puts "yea"
end


# RELEASE 3
=begin 
repeat while swapping
go through array
compare current to next value, swap if >
print array
=end
def method(x)
  swapped = true
  while swapped == true
    swapped = false
    (x.length-1).times do |i|
      if x[i] > x[i+1]
        x[i], x[i+1] = x [i+1], x[i]
        swapped = true
      end
    end 
  end 
  x 
end
  
qwe = [3, 5, 1, -1, 999]
method(qwe)