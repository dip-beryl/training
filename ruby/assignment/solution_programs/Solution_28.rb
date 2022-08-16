=begin
    
28. Given an array of integers nums, return the number of good pairs.
    A pair (i, j) is called good if nums[i] == nums[j] and i < j
    
=end

def count_good_pairs(array)
    count = 0

    array.each_index do |i|

        for j in (i+1)...array.length
            if array[i] == array[j]
                count += 1
            end
        end
    end

    return count
end

arr = [1,2,3,4,5,1,2,3,4,1,3]
puts count_good_pairs(arr)
