# 9. Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

#using hash

def find_non_repeating(string)
    hash = {}

    for i in 0...string.length
        if hash[string[i]] 
            hash[string[i]] += 1
        else
            hash[string[i]] = 1
        end
    end

    hash.each do |key, value|
        if value == 1
            return key
        end
    end
    return -1
end

s = "sstritrinaksyedshthl"
puts find_non_repeating(s)

puts find_non_repeating("nnss")
