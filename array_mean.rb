=begin 
find mean of an array 

=end

def get_average(arr)

#first way
  # counter = 0
  # arr.each do |i| 
  #   counter +=i
  # end
  # avg =  counter / arr.length
  
  # 2nd way
   #avg = arr.reduce {|acc, el| acc + el} / arr.length
  
  # 2nd way - variation 
   avg = arr.reduce(:+) / arr.length
  
  return puts "The arr is #{arr}\nThe average is #{avg}"
end

arr = [2,5,13,20,16,16,10]
puts get_average(arr)
#The arr is [2, 5, 13, 20, 16, 16, 10]
#The average is 11
