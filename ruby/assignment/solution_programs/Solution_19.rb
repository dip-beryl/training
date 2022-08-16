=begin
    
19. Given an integer array nums, find a contiguous non-empty subarray within the array that has the largest product, 
    and return the product. Elements can also be negative numbers.
        
    Input: nums = [2,3,-2,4]
    Output: 6
    Explanation: [2,3] has the largest product 
    
=end

def max_prod_subarray(array)
    
    max_prod = array[0]
    len = array.length

    array.each_index do |i|
        
        product = array[i]

        for j in (i+1)...len
            max_prod = [max_prod, product].max
            product *= array[j]
        end
        
        max_prod = [max_prod, product].max
    end
    return max_prod
end

arr = [-10, -5, 5, 2, 7, -5, 12, 9, 0, 11]
print max_prod_subarray(arr)
