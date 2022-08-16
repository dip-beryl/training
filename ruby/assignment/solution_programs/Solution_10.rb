=begin

10. Given a string s and an array of strings words, determine whether s is a prefix string of words.
    A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some 
    positive k no larger than words.length. Return true if s is a prefix string of words, or false otherwise.

=end

def check_prefix_string(s, words)

    str_compare = ""
    
    words.each do |word|

        str_compare << word

        if s == str_compare
            return true
        end
    end

    return false
end

s = "anewworld"
words = ["a", "new", "world", "heaven"]

puts check_prefix_string(s, words)