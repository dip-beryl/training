=begin
-- using hash

39. Given two unsorted arrays [A of size N ] and [B of size M ] of distinct elements, 
    the task is to find all pairs from both arrays whose sum is equal to X.    
=end


def pair_sum(array_1, array_2, target)
    hash={}
    result = []     # storing pairs that satisfies target

    array_1.each_index do |i|
        hash[array_1[i]] = i
    end

    array_2.each_index do |i|
        find = target - array_2[i]

        if hash[find]
            result << [find, array_2[i]]
        end
    end
    
    return result
end

a = [5,2,8,4,9,3,0,1]
b = [3,2,-1,5,9,0,4]

x = 8
print pair_sum(a, b, x)

puts

x = 0
print pair_sum(a, b, x)

puts 

x = 30
print pair_sum(a, b, x)
