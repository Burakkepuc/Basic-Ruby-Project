# Sub String

# 1) Implement a method that takes a word and array of valid substring
# 2) Should return hash listing each substring(case insensitive) that was found in the original string and how many times it was found

# Return hash -DONE
# Substring algorithm -DONE(while)

def substrings(string,dictionary) 
   string = string.downcase.split
   dictionary.reduce(Hash.new(0)) do |result,word| # result = {} / word = dictionary word one by one(below,down....sit)      
        i = 0
        while i < string.length
             if string[i].include?(word)
             result[word] += 1
             end
             i += 1
        end
           result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

 x = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts x