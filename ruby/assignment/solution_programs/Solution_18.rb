# 18. Write a function which takes an array of integers, return how many of them contain an even number of digits.

def count_even_digit_numbers(array)
    count = 0
    
    array.each do |n|
        digits = n.digits.count
        if digits % 2 == 0
            count += 1
        end
    end

    return count
end

nums = [123, 22, 2314, 1, 923412]
puts count_even_digit_numbers(nums)