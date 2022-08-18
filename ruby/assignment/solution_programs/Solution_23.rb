# 23. Given an array nums. We define a running sum of an array as running Sum[i] = sum( nums[0]…nums[i]).
#       Return the running sum of nums.

def running_sum(array)
    sum = 0

    array.each do  |n|
        sum += n
    end

    return sum
end

nums = [1,2,3,4,5,6,7,8,9]
puts running_sum(nums)