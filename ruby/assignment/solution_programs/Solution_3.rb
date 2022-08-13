# 3. Given a string s, reverse only all the vowels in the string and return it.The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both cases.

def reverse_vowels(string)
    
    return string.scan(/[aeiouAEIOU]/).join.reverse
    
end

s = "abcdefghijklmnoAEIOU"

print reverse_vowels(s)