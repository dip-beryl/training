# using hash

# 33.1 Given an array nums containing n distinct numbers in the range [0, n], 
#       return the only number in the range that is missing from the array.

def find_missing(array, range)
    hash = {}

    array.each do |n|
        hash[n] = true
    end
    
    range.times do |i|
        if !hash.key?(i)
            return i
        end
    end

    return -1
end

range = 11
nums = [11,8,9,0,1,2,3,4,5,6,7]
puts find_missing(nums, range)