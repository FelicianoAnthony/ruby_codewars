=begin 

You will be given an vector of string(s). You must sort it alphabetically (case-sensitive!!) and then return the first value.
The returned value must be a string, and have "***" between each of its letters.
You should not remove or add elements from/to the array.

=end

def two_sort(s)

  # 1st way
  s.sort! { |first, second| first <=> second }
  s[0].split('').join('***')
  
  # 2nd way
  # starred = ""
  # s[0].split('').each_with_index do |i, idx|
  
  #   str_length = s[0].size
  
  #   if idx == str_length -1
  #     starred+=i
  #   else 
  #     starred+=i + "***"
  #   end
  
  #     end 
  #starred

end

arr = ["i", "want", "to", "travel", "the", "world", "writing", "code", "one", "day"]
two_sort(arr)
#'c***o***d***e'