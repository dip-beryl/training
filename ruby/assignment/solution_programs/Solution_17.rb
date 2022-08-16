# 17. Write a function which takes an integer (positive) and return an array of Fibonacci number of each index in 
#       index position till given number.


def fib_array(num)
    
    fibArray = []
    
    n1 = 0
    n2 = 1

    fibArray << n1
    if num == 0 then return fibArray end

    fibArray << n2
    if num == 1 then return fibArray end
    
    2.upto(num) do
        n3 = n1 + n2
        n1 = n2
        n2 = n3
        fibArray << n3
    end
    return fibArray
end

n = 10
print fib_array(10)
