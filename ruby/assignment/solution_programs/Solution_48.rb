
# 48. Given a date, return how many days date is away from 2023 (end date not included). 
#    date will be in mm/dd/yyyy format.

require 'date'

def to_2023(date)
    target = Date.new(2023)
    
    date = Date.strptime(date, "%m/%d/%Y")
    
    diff_in_days = (target - date).to_i
    
    return diff_in_days
end

puts to_2023("12/3/1997")
puts to_2023("1/1/2022")
puts to_2023("12/31/2022")
