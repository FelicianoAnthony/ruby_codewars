=begin 

Define a function that removes duplicates from an array of numbers and returns it as a result.
The order of the sequence has to stay the same.

=end




def distinct(dupes)

# 1st way - return the intersection 
 unique_arr = dupes & dupes

# 2nd way - rubyist
#unique_arr =  dupes.uniq
return puts "Duplicate Array: #{dupes}\nDuplicates Removed Array:#{unique_arr}"
end

arr = [1, 2, 2, 3, 3, 4, 4, 5, 6, 7, 7, 7]
distinct(arr)
#Duplicate Array: [1, 2, 2, 3, 3, 4, 4, 5, 6, 7, 7, 7]
#Duplicates Removed Array:[1, 2, 3, 4, 5, 6, 7]