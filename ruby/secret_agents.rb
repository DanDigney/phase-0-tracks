=begin
# SHORT - ENCRYPT
def encrypt(i)
  c = 0
  a = "abcdefghijklmnopqrstuvwxyz"
  while c < i.length 
    if a.index(i[c])
      x = i[c]
      if x == "z"
        print "a"
      else  
        y = x.next
        print y
      end
    else 
        print i[c]
    end
    c += 1
  end
end

# SHORT - DECRYPT
def decrypt(i)
  c = 0
  a = "abcdefghijklmnopqrstuvwxyz"
  while c < i.length 
    if a.index(i[c]) 
      x = i[c]
      y = a.index(x).to_i
      z = a[(y-1)]
      print z
    else 
      print i[c]
    end
    c += 1 
  end
end
=end

# LONG - ENCRYPT
def encrypt(user_input)
  counter = 0 
  alphabet_string = "abcdefghijklmnopqrstuvwxyz"
  while counter < user_input.to_s.length
    if alphabet_string.index(user_input[counter])
      new_user_input = user_input[counter]
      if new_user_input == alphabet_string[25]
        print "a"
      else
        new_letter = new_user_input.next
        print new_letter
      end
    else
      print user_input[counter]
    end
    counter += 1
  end
end

# LONG - DECRYPT
def decrypt(user_input)
  counter = 0
  alphabet_string = "abcdefghijklmnopqrstuvwxyz"
  while counter < user_input.to_s.length 
    if alphabet_string.index(user_input[counter]) 
      new_user_input = user_input[counter]
      index_of_the_letter = alphabet_string.index(new_user_input).to_i
      new_letter = alphabet_string[(index_of_the_letter-1)]
      print new_letter
    else 
      print user_input[counter]
    end
    counter += 1 
  end
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
# this next one works because the original value is changed
decrypt(encrypt("swordfish"))