=begin

46. Given the parameters day, month and year, return whether that date is a valid date.
        
    > is_valid_date(35, 2, 2020) ➞ false
    >> # February doesn't have 35 days.

=end

class Validation
    def leap_year?(year)
        if year % 400 == 0 
            return true
        elsif year % 100 == 0
            return false
        elsif year % 4 == 0
            return true
        else
            return false
        end
    end

    def is_valid_date(day, month, year)

            # negative check
        if !((1..31) === day) || !((1..12) === month) || year < 0   
            return false
        end

            # month days check (for 31 days month)
        if [4,6,9,11].include?(month) && day > 30
            return false
        end

        if month == 2
            if leap_year?(year) && day > 29
                return false
            elsif !(leap_year?(year)) && day > 28
                return false
            end
        end
        return true
    end
end

obj = Validation.new
puts obj.is_valid_date(35, 2, 2020)
puts obj.is_valid_date(3, 13, 2020)
puts obj.is_valid_date(31, 1, 2019)
puts obj.is_valid_date(31, 4, 2019)
puts obj.is_valid_date(29, 2, 2019)
