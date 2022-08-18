=begin

26. A distinct string is a string that is present only once in an array. 
    Given an array of strings arr, and an integer k, return the kth distinct string present in arr. 
    If there are fewer than k distinct strings, return an empty string "".
    
    Note that the strings are considered in the order in which they appear in the array.

=end

def k_distinct_string(array, k)
    distinct_array = []

    array.each do |i|
        count = 0

        array.each do |j|
            
            if i == j
                count += 1
                if count > 1 then break end
            end

        end
        
        if count == 1
            distinct_array << i
        end
    end
    
    if distinct_array[k-1]
        return distinct_array[k-1]
    else
        return ""
    end

end

array = ["new", "world", "order", "new", "world", "house", "planet"]
puts k_distinct_string(array, 2)
puts k_distinct_string(array, 3)
puts k_distinct_string(array, 5)
