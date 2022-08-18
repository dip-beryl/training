=begin

37. Given a string s which consists of lowercase or uppercase letters, 
    return the length of the longest palindrome that can be built with those letters.
    Letters are case sensitive, for example, "Aa" is not considered a palindrome here.

=end


def length_longest_pal(string)
    hash = {}
    e_count = 0
    o_count = 0

    string.each_char do |ch|
        if hash[ch]
            hash[ch] += 1
        else
            hash[ch] = 1
        end
    end

    hash.each do |key, value|
        if value.even?
            e_count += value
        elsif value.odd? && value > o_count
            o_count = value
        end
        
    end
    return e_count + o_count
end


puts length_longest_pal("aabbccddfgh")
puts length_longest_pal("aabbccddfffgh")
puts length_longest_pal("aabbccdd")

