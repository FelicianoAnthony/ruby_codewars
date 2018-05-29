=begin 

write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.

the string should start with a 1.
a string with size 6 should return :'101010'.
with size 4 should return : '1010'.
with size 12 should return : '101010101010'.

=end

def stringy(size)
  
  binary_string = ""
  for i in 0..size
    if binary_string.length > size
      nil
    else
      binary_string+='10'
    end
  end
  
  if binary_string == ""
    return ""
  else
    return binary_string[0..size-1]    
  end

end

stringy(4)
# '1010'
stringy(12)
# '101010101010'