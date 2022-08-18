# 6. Given a String S, reverse the string without reversing its individual words. Words are separated by dots.


def reverse_words(string)
    reverse_array = []

    s_array = string.split(".")

    s_array.reverse_each do |x|
        reverse_array << x
    end

    reverse_array = reverse_array.join(".")

    return reverse_array
end

s = "My.Name.is.Kapoor.and.I.am.a.chef"
print reverse_words(s)
