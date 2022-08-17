
# 40. Write a function which takes year and returns how many Saturday 14ths there are in a given year.

require 'date'

def find_saturday_14(year)
    count = 0
    
    1.upto(12) do |m|
        if Date.new(year, m, 14).saturday? == true     # 6 is Saturday according to .wday
            count += 1
        end
    end
    return count
end


year = 2020
puts find_saturday_14(year)

year = 2022
puts find_saturday_14(year)

year = 1997
puts find_saturday_14(year)
