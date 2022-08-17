=begin
using hash

38. Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
    If target is not found in the array, return [-1, -1].

    Increasing Order        = 1,2,3,5,6,8,
    NON - Decreasing Order  = 1,2,3,3,4,4,5,7,7
    
=end


def find_coordinates(array, target)
    hash={}
    
    array.each_index do |i|
        if hash[array[i]]
            hash[array[i]][1] = i
        else
            hash[array[i]] = [i, i]
        end
    end

    #print hash     #if you want to understand hash structure
    
    begin
        return hash.fetch(target)   #exception handling in case of target doesn't exsist
    rescue
        return [-1,-1]
    end
end


nums = [1,2,3,3,4,4,4,4,5,7,7,9]
target = 4

print find_coordinates(nums, target)
