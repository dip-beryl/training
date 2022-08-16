=begin
    
22. Given an integer array nums and an integer k, return the number of pairs (i, j) where i < j such that 
    |nums[i] - nums[j]| == k.
    The value of |x| is defined as: 
    x if x >= 0.
    -x if x < 0
    
=end

def count_sum_pairs(array, k)

    pair_count = 0

    array.each_index do |i|

        for j in (i+1)...array.length
            if (array[i] - array[j]).abs ==  k
                pair_count += 1
            end
        end

    end
    return pair_count
end

nums = [1, 2, 3, 25, 15,78, 22, 13, 9, 5, -10, 0]
k = 3

print count_sum_pairs(nums, k)
