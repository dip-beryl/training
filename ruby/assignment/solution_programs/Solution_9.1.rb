# 9. Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

#using looping

def find_non_repeating(string)
    
    for i in 0...string.length
        count = 0

        for j in 0...string.length  
            
            if string[i] == string[j]
                count += 1
                if count > 1 then break end
            end
        end

        if count == 1 then return i end
    end
    
    return -1
end

s = "sstritrinaksyedshthl"
puts find_non_repeating(s)

puts find_non_repeating("nnss")
