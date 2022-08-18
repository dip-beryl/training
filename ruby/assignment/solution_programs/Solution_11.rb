=begin

11. You are given an array of strings nums and an integer k. 
    Each string in nums represents an integer without leading zeros.
    Return the string that represents the kth largest integer in nums.
    
    Note: Duplicate numbers should be counted distinctly. 
    For example, 
        if nums is ["1","2","2"], 
        "2" is the first largest integer, 
        "2" is the second-largest integer, and 
        "1" is the third-largest integer

=end

def selection_sort_desc(array)

    for j in 0...array.length-1
        max_index = j

        for i in j+1...array.length
            if array[max_index] < array[i]
                max_index = i
            end
        end

        array[j], array[max_index ] = array[max_index ], array[j]
    end
    
end

def kth_largest(array, k)
    selection_sort_desc(array)
    return array[k-1]
end

s = [1,2,3,4,5]
print kth_largest(s, 3)

