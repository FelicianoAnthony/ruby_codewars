=begin 

You get an array of numbers, return the sum of all of the positives ones.
Example [1,-4,7,12] => 1 + 7 + 12 = 20

=end


def positive_sum(arr)
  
  sum = 0
  arr.each do |i|
    if i > 0
      sum+=i
    end
  end
  sum
end

arr = [-1,2,3,4,-5]
positive_sum(arr)
# 9