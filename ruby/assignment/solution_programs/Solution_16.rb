=begin

16. Given an integer limit being the upper limit of the range of interest, 
    implement a function that 
    returns the last 15 palindromes numbers lower or equal to limit as an array sorted ascendingly.
    
=end

    
def n_palindroms(num)
    palindromes = []

    1.upto(num) do |i|

            # code to make reverse of a number -----------
        reverse = 0
        n = i

        while (n > 0)     
            reverse = (reverse * 10) + (n % 10)
            n /= 10
        end
        #-------------------------------------------------

        if (reverse == i)       #if reverse of the number is same then its a palindrom
            palindromes << i
        end
    end
    
    return palindromes[palindromes.length-15, 15]
end

print n_palindroms(150)
