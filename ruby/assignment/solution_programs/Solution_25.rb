# 25. Given an array nums of size n, return the majority element. The majority element is the element that 
#      appears more than [n / 2] times. You may assume that the majority element always exists in the array.

def find_majority_element(array)
    max_count = 0
    max_index = 0
    
    array.each_index do |i|
        count = 0
  
        array.each do |j|
            if array[i] == j
                count += 1
            end
        end
  
        if count > max_count
            max_count = count
            max_index = i
        end
    end

    if max_count > (array.length/2)
        return array[max_index]
    else
        return -1
    end
end

arr = [1,2,3,4,3,2,4,4,4,4,3,4]
puts find_majority_element(arr)