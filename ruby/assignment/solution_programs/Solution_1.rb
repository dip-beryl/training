# 1. Create a function that takes an array of strings and integers, and filters out the array so that it returns an array of integers only.

def filter_int_array(array)
    
    filtered_array = array.select{ |i| i.is_a?(Integer) || i.is_a?(Float)}
    
    return filtered_array
end

arr = [1, 2, 33, 0.6, 77.9, -23, -4.76, "hello", "yes", :sym]

print filter_int_array(arr)