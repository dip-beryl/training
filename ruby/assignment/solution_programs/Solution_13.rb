=begin

13. You are given the array paths, where paths[i] = [cityAi, cityBi] means there exists a direct path going from cityAi to cityBi.
    Return the destination city, that is, the city without any path outgoing to another city.
    It is guaranteed that the graph of paths forms a line without any loop, therefore, there will be exactly one destination city.

    Input: paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]
    Output: "Sao Paulo"
    
    Explanation: Starting at "London" city you will reach "Sao Paulo" city which is the destination city. 
    Your trip consist of: "London" -> "New York" -> "Lima" -> "Sao Paulo"
    
=end

def destination_city(array)

    array.each do |destination|
        
        destination_flag = false
                                                # Optimization :
        array.each do |starting|                # we can also make index based loops and skip the element that we have passed in first loop
                                                # i.e, if 1st loop selects [i] start the second loop from [i]
            if destination[1] == starting[0]
                destination_flag = true
                break
            end
        end
        

        if destination_flag == false
            return destination[1]
        end
    end
end

paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]
puts destination_city(paths)

paths = [["Delhi","Manali"],["Kolkata","Agra"],["Faidabad", "Delhi"], ["Agra","Faridabad"]]
puts destination_city(paths)