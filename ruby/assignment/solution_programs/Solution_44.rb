
# 44. Create a function that takes the month and year (as integers) and returns the number of days in that month.

require "date"

def number_of_days(month, year)
    
    hash = {1 =>31, 3=>31, 4=>30, 5=>31, 6=>30, 7=>31, 8=>31, 9=>30, 10=>31, 11=>30, 12=>31}

    date = Date.new(year, month, 1)

    if date.month == 2
        if date.leap? then return 29
        else return 28 end
    end

    return hash[date.month]
end

m = 5
y = 2022
puts number_of_days(m, y)

m = 2
y = 2004
puts number_of_days(m, y)

