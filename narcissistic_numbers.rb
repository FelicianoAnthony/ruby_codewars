=begin 

A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits.

For example, take 153 (3 digits):
    1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

and 

1634 (4 digits):
	1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634


=end












def narcissistic?( value )

  value_arr = value.to_s.split('')

  sum= 0
  value_arr.each do |num|
    product = num.to_i ** value_arr.length
    sum += product
  end
  
  sum == value ? true: false 
  
end

num = 5
narcissistic?(num)
# true 