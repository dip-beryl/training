# 27. Given an integer array nums, move all the even integers at the beginning of the array followed by all the 
#      odd integers. Return any array that satisfies this condition.


def even_odd_array(array)
    even_arr = []
    odd_arr = []

    array.each do |x|
        if x.even?
            even_arr << x
        else
            odd_arr << x
        end
    end

    return even_arr.concat(odd_arr)
end

nums = [0,1,2,3,44,55,66,7,8,9]
print even_odd_array(nums)