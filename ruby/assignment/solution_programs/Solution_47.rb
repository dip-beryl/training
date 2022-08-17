
# 47. Given the month and year as numbers, return whether that month contains a Friday 13th.

require 'date'

def friday_13?(month, year)
    
    if Date.new(year, month, 13).friday? == true
        return true
    end

    return false
end

puts friday_13?(5, 2000)
puts friday_13?(5, 2022)
puts friday_13?(12, 1997)
