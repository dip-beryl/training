#21. Write a function that takes an integer (less than 1000) and return an array of primes till that number.


def prime_list(num)

    prime_arr = []

    if num == 0
        return prime_arr
    elsif num == 1
        prime_arr << 1
        return prime_arr
    elsif num == 2
        prime_arr.push(1,2)
        return prime_arr
    elsif num <= 4
        prime_arr.push(1,2,3)
        return prime_arr
    end

    prime_arr.push(1,2,3)
    5.upto(num) do |n|
    
        flag = true
        for d in 2..Math.sqrt(n).ceil
            if n % d == 0
                flag = false
                break 
            end
        end

        if flag == true then prime_arr << n end
    end
    
    return prime_arr
end

print prime_list(1000)