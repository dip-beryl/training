# 7. Given two strings s and t, return true if t is an anagram of s, and false otherwise.

def anagram(string_1, string_2)
    
    match = ""
    
    for i in 0...string_1.length
        
        for j in 0...string_2.length
            
            if string_1[i].casecmp?(string_2[j])
                match << i
                string_2.slice!(j)
                break 
            end
        end
    end

    return string_2.empty?
end

puts anagram("cat", "tac")
puts anagram("cAt", "atc")
puts anagram("bat", "tac")
