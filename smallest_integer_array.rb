=begin 

Given an array of integers your solution should find the smallest integer.

For example:
Given [34, 15, 88, 2] your solution will return 2
Given [34, -345, -1, 100] your solution will return -345
You can assume, for the purpose of this kata, that the supplied array will not be empty.

=end




def find_smallest_int(arr)
  # 1st way
  smallest_num = arr.sort[0]

  # 2nd way 
  # smallest_num = arr[0]
  
  # arr.drop(1).each do |i|
  #   if i < smallest_num
  #     smallest_num = i
  #   end
  # end
  # smallest_num

  return "Original Array: #{arr}\nSmallest Integer: #{smallest_num}"
  
end

arr = [-78,56,-2,12,8]
puts find_smallest_int(arr)
#Original Array: [-78, 56, -2, 12, 8]
#Smallest Integer: -78