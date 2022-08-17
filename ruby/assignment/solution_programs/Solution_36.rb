=begin
using hash

36. Given a string text, you want to use the characters of text to form as many instances of the word "balloon"
    as possible. You can use each character in text at most once. Return the maximum number of instances
    that can be formed.

    Example: loonballxballpoon
    You can create only 2 balloon from example text, so return 2

=end

def count_balloon(string)
    balloon_hash = {'b'=>0, 'a'=> 0, 'l'=>0, 'o'=>0, 'n'=>0}

    string.each_char do |ch|
        if balloon_hash[ch]
            balloon_hash[ch] += 1
        end
    end
    
    balloon_hash['l'] = balloon_hash['l']/2
    balloon_hash['o'] = balloon_hash['o']/2
    
    return balloon_hash.values.min
end

str = "loonballxballpoon"
puts count_balloon(str)

str = "loonballxballpoonloobann"
puts count_balloon(str)