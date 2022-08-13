# 4. Given an n-digit large number in form of string, check whether it is divisible by 7 or not. Print 1 if divisible by 7, otherwise 0.

def div_seven?(num_str)
    if num_str.to_i % 7 == 0
        return 1
    else
        return 0
    end
end

print div_seven?("7")