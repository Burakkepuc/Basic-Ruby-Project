#Caesar Cipher project

# 1) First loop over the string.  - DONE
# 2) Convert each string into Ascii value. -DONE
# 3) When the outcome is Z or z , loop over it to A or a 

# The alphabet is 26 character 26 % 90

def caesar(string,key = 0)
    big_letters = ('A'..'Z').to_a
    small_letters = ('a'..'z').to_a
    big_A = 65
    small_a = 97
    arr = []
  
    string.gsub(/./) do |s|

      if big_letters.include?(s)
        alphabet_number =  s.ord - 65 # Find the alphaber order number or letter
        shift = (alphabet_number + key) % 26
        new_char =  big_A +  shift
        arr << new_char.chr

     elsif small_letters.include?(s)
        alphabet_number = s.ord - 97
        shift = (alphabet_number + key) % 26
        new_char =  small_a +  shift
        arr << new_char.chr

    else 
        arr << s
    end
  end
    arr.join

end

x = caesar("What a string!",5)
print x
