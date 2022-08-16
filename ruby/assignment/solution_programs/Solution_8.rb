=begin

8. A phrase is a palindrome if,
    after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, 
    it reads the same forward and backward. 
    Alphanumeric characters include letters and numbers. 
    
    Given a string s, return true if it is a palindrome, or false otherwise

=end


def check_palindrom(string)

    string.length.times do |n|
    
        if string[n] =~ /[^0-9a-zA-Z]+/
            string.slice!(n)
        end
    end

    string.downcase!

    if string == string.reverse
        return true
    else
        return false
    end
end
  

string= "a$bc*D1÷2321%dcBa"
puts string
puts check_palindrom(string)

string= "a$bc*D1÷233221%dcBa"
puts string
puts check_palindrom(string)
