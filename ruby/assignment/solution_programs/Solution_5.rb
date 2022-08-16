# 5. Given a string S, print all permutations of a given string.


def str_permutation(string)

    final_permutations = ""

    for n in 1..string.length
        str_array = string.chars.permutation(n).to_a

        for i in str_array
            final_permutations << i.join + ','
        end

        final_permutations << "\n"
    end

    return  final_permutations
end

  str = "adsk"
  print str_permutation(str)