# 32. Given a string s, return true if s is a good string, or false otherwise. A string s is good if all the characters
#        that appear in s have the same number of occurrences (i.e., the same frequency).

def good_string?(string)
    hash = {}

    string.each_char do |ch|
        if ch == " " then next end
        
        if hash.key?(ch)
            hash[ch] += 1
        else
            hash[ch] = 1
       end
    end

    freq = hash.values.sample

    return !hash.any? { |key, value| value != freq}
end

string = "good string"
puts good_string?(string)

string = "god god"
puts good_string?(string)
