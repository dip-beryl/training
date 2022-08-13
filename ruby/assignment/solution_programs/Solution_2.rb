# 2. Write a function to return reverse of a string using recursion.

def reverse_recursion(string)
    
    if string.length == 1
        return string
    end

    return string[-1] + reverse_recursion( string.chop )
end

str = "Hello New World"

print reverse_recursion(str)