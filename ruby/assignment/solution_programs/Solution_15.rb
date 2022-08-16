# 15. Create a function that takes an array of numbers and returns a new array containing only prime numbers.

def prime_array(array)
    prime_arr = []
    
    array.each do |num|
        if num <= 0 || num.is_a?(Float) then next end

        if num <=3
            prime_arr.push(num)
            next
        end

        flag = true
        for n in 2..Math.sqrt(num).ceil
            if num % n == 0
                flag = false
                break 
            end
        end

        if flag == true then prime_arr.push(num) end
    end
    return prime_arr
end

arr = [1,3,2.3,0,-1,1.1,45, 7, 11,17,19]

print prime_array(arr)