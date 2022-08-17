=begin

using hash

35. You are given two strings of the same length s and t. In one step you can choose any character of t and
    replace it with another character. Return the minimum number of steps to make t an anagram of s. 
    An Anagram of a string is a string that contains the same characters with a different (or the same) ordering.

=end



def count_steps_anagram(str_1, str_2)
    hash = {}
    count = 0
    str_1.each_char do |ch|
        hash.store(ch, 1)
    end

    str_2.each_char do |ch|
        if !hash[ch]
            count += 1
        end
    end
    return count
end


s = "later"
t = "bofor"
print count_steps_anagram(s, t)