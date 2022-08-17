=begin
using hash

30. A pangram is a sentence where every letter of the English alphabet appears at least once.
    Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or 
    false otherwise.

=end

def pangram?(string)
    
    letters = %w[a b c d e f g h i j k l m n o p q r  s t u v w x y z]
    alphabets = {}
    for letter in letters
        alphabets.store(letter, false)
    end
    
    string.each_char do |ch|
        if ch == " "
            next
        end

        alphabets[ch] = true
    end

    if alphabets.has_value?(false)
        return false
    else
        return true
    end
end

sentence = "The quick brown fox jumps over the little lazy dog"
puts pangram?(sentence)

sentence = "Hello World!"
puts pangram?(sentence)