=begin

12. Given two strings s and part, perform the following operation on s until all occurrences of the substring part are removed:
    Find the leftmost occurrence of the substring part and remove it from s.
    Return s after removing all occurrences of part.
    
    A substring is a contiguous sequence of characters in a string.
    
=end

def remove_substring(string, part)
    part_len = part.length

    for i in 0...string.length
        for j in 0..string.length
            if string[j, part_len] == part
                string.slice!(j, part_len)
            end
        end
    end

    return string
end

s = "new world new earth new India"
part = "new"
puts remove_substring(s, part)