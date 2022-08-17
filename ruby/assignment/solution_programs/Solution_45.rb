
# 45. Given a range of years as a string, return the number of leap years there are within the range (inclusive).

require "date"

def count_leap_years(range)
    count = 0
    
    range_arr = range.split("-").map { |x| x.to_i}
    
    range_arr[0].upto(range_arr[1]) do |year|
        
        if Date.new(year).leap?
            count += 1
        end
    end
    
    return count
end

range = "2001-2022"
puts count_leap_years(range)

range = "1947-2000"
puts count_leap_years(range)
