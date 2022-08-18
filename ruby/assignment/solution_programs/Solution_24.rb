=begin

24. Write a function which takes square matrix mat, return the sum of the matrix diagonals.
    Only include the sum of all the elements on the primary diagonal and all the elements on the secondary
    diagonal that are not part of the primary diagonal.

=end

def sum_diagonals(matrix)
    sum = 0

    matrix.each_index do |i|
        
        for j in 0..matrix.length
        
            if i == j || (i+j) == matrix.size-1
                sum += matrix[i][j]
            end
        end
    end
    return sum
end

matrix = [[1, 2, 3], [5, 6, 7] , [9, 10, 11]]
puts sum_diagonals(matrix)