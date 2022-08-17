# using hash

# 34. Given two integer arrays nums1 and nums2, return an array of their intersection. 
#       Each element in the result must be unique and you may return the result in any order.


def find_intersection(array_1, array_2)
    result = {}
    hash = {}

    array_1.each do |n|
        hash[n] = 1
    end

    array_2.each do |n|
        if hash[n]
            result.store(n, true)
        end
    end

    return result.keys
end

arr1 = [1,2,3,4,5]
arr2 = [4,5,6,7,8,5]
print find_intersection(arr1, arr2)