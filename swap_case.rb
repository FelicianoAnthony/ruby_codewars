=begin 

...each lowercase letter becomes uppercase and each uppercase letter becomes lowercase....

=end


def swap_case(string)

  # swapped = string.split('').each_with_index do |word, idx| #the parameters are comma separated and in order
  #     if word == word.upcase
  #       word.downcase!
  #     else 
  #       word.upcase!
  #     end
  #   end
  # return swapped.join

    swapped = string.split('').each_with_index {|word, idx| word == word.upcase ? word.downcase! : word.upcase!}

    return puts "Original String: #{string}\nSwapped String: #{swapped.join}"

end

str = "HELLO world"
puts swap_case(str)
#Original String: HELLO world
#Swapped String: hello WORLD