=begin

49. The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format (02/02/2020). 
    Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date formats, 
    otherwise return false

=end

require 'date'

def palindromic_date?(date)
    flag = false
    
    date = Date.strptime(date, "%d/%m/%Y")
    
    date_1 = date.strftime("%d%m%Y")
    date_2 = date.strftime("%m%d%Y")
    
    if (date_1 == date_1.reverse) && (date_2 == date_2.reverse)
        flag = true
    end

    return flag
end

puts palindromic_date?("2/2/2020")      # valid palindrom for both formats
puts palindromic_date?("22/2/2022")     # valid only for 1st date format
puts palindromic_date?("3/12/1997")     # not valid in any format
