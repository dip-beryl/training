=begin

29. Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
        Symbol Value
        I 1
        V 5
        X 10
        L 50
        C 100
        D 500
        M 1000
Write a function which takes roman number and return integer corresponding to that roman number.
    
=end

def roman_to_decimal(roman_num)
    roman = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}

    if roman_num =~ /([IXM])\1{3,}/ || roman_num =~ /([VLD])\1{1,}/
        return -1
    end

    i = 0
    number = 0

    while i < roman_num.length
        r1 = roman[roman_num[i]]

        if i+1 < roman_num.length
            r2 = roman[roman_num[i+1]]
            
            if r1 >= r2
                number += r1
                i += 1
            else
                number += r2 - r1
                i += 2
            end
        else
            number += r1
            i += 1
        end
    end
    
    return number
end

puts roman_to_decimal("MCMXIV")
puts roman_to_decimal("VV")

