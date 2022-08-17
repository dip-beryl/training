=begin

31. Given an array of integers nums and an integer target, return indices of the two numbers such that they
    add up to target. You may assume that each input would have exactly one solution, and you may not use
    the same element twice. You can return the answer in any order.

=end

def find_sum(array, target)
    hash = {}   #hashtable {value=>index}

    array.each_index do |i|
        find = target - array[i]
        
        if hash.has_key?(find)    
            return [i, hash[find]]  #indices
        
        else
            hash[array[i]] = i
        end
    end
    return -1

end


nums = [1,2,3,4,5]
target = 5

print find_sum(nums, target)
