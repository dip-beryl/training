=begin

50. If today was Monday, in two days, it would be Wednesday.
    
    Create a function that takes in an array of days as input and the number of days to increment by.
    Return an array of days after n number of days has passed.
    
    Input  > after_n_days(["Thursday", "Monday"], 4)
    Output >> ["Monday", "Friday"]

=end


def after_n_days(array, increment)

    days_hash = {"Monday"=>1, "Tuesday"=>2, "Wednesday"=>3, "Thursday"=>4, "Friday"=>5, "Saturday"=>6, "Sunday"=>7}
    
    result_array = []

    array.each do |x|
        
        new_day = days_hash[x] + increment
        
        if new_day > 7
            new_day = new_day - 7
        end
        
        days_hash.each do |key, value|            
            if value == new_day
                result_array.push(key)
                break
            end
        end
    end

    return result_array
end

print after_n_days(["Thursday", "Monday"], 4)
puts
print after_n_days(["Monday", "Sunday", "Tuesday"], 2)
