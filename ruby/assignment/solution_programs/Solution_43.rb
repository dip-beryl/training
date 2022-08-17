=begin

43. Write a function that, given a date (in the format MM/DD/YYYY), returns the day of the week as a string.
    Each day name must be one of the following strings: "Sunday", "Monday", "Tuesday", "Wednesday",
    "Thursday", "Friday", or "Saturday".

    To illustrate, the day of the week for "12/07/2016" is "Wednesday".

=end

require "date"

def day_name(date)
    
    date = Date.strptime(date, "%m/%d/%Y")
    
    return date.strftime("%A")

end

date = "8/15/2022"
puts day_name(date)

date = "12/3/1997"
puts day_name(date)
