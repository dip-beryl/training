=begin

41. Create a function that converts dates from one of five string formats:
    
    "January 9, 2019" (MM D, YYYY)
    "Jan 9, 2019" (MM D, YYYY)
    "01/09/2019" (MM/DD/YYYY)
    "01-09-2019" (MM-DD-YYYY)
    "01.09.2019" (MM.DD.YYYY)
    
    The return value will be an array formatted like: [MM, DD, YYYY], where MM, DD, and YYYY are all integers.

=end

require 'date'

def simple_format_arr(date)
    case
    when date.include?(",")
        simple_date = Date.parse(date)
        
    when date.include?("/")
        simple_date = Date.strptime(date, "%m/%d/%Y")
    
    when date.include?("-")
        simple_date = Date.strptime(date, "%m-%d-%Y")

    when date.include?(".")
        simple_date = Date.strptime(date, "%m.%d.%Y")
    else
        return -1
        
    end
    
    return [simple_date.month, simple_date.day, simple_date.year]
end

date = "12/10/2020"
print simple_format_arr(date), "\n"

date = "Mar 15,1990"
print simple_format_arr(date), "\n"

date = "11.02.2000"
print simple_format_arr(date), "\n"