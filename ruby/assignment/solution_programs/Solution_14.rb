# 14. Write a function which takes an integer (positive) and return an array of factorials 
#      of each index in index position till given number.


def fact_list(num)

    result_arr = []

    (num+1).times do |n|

        fact = 0

        if n != 0
            fact = 1

            for i in 1..n
                fact *= i
            end
        end

        result_arr << fact
    end
    
    return result_arr
end

print fact_list(7)