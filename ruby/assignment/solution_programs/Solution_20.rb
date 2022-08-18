=begin

20. Given an unsorted array Arr of size N of positive integers. 
    One number 'A' from set {1, 2, …N} is missing, and 
    One number 'B' occurs twice in array. 
    
    Find these two numbers.

=end

def find_missing_and_double(array, n)   #--> [A, B]
    a = 0
    b = 0

    1.upto(n) do |x|

        if array.count(x) == 0
            a = x
        end

        if array.count(x) == 2
            b = x
        end
    end

    return [a, b]
end

nums = [2, 8, 3, 10, 9, 7, 6, 1, 4, 9]
print find_missing_and_double(nums, 10)