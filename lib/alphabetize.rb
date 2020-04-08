require 'pp'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(array)
  array.sort do |a,b|
    parsed_a = remove_spaces(a)
    parsed_b = remove_spaces(b)
    a1 = index_of(parsed_a[0])
    b1 = index_of(parsed_b[0])
    compare_1 = perform_compare(a1,b1)
    if compare_1 == 0
      a2 = index_of(parsed_a[1])
      a2 = index_of(parsed_b[1])
      compare_2 = perform_compare(a2,b2)
      if compare_2 == 0
        a3 = index_of(parsed_a[2])
        b3 = index_of(parsed_b[2])
        compare_3 = perform_compare(a3,b3)
        if compare_3 == 0
          a4 = index_of(parsed_a[3])
          a4 = index_of(parsed_b[3])
          compare_4 = perform_compare(a4,b4)
          if compare_4 == 0
            
          else
            return compare_4
          end
        else
          return compare_3
        end
      else
        return compare_2
      end
    else
      return compare_1
    end
  end
end

def perform_compare(a, b)
  a <=> b
end

def remove_spaces(word)
  word.gsub("\s","")
end

def index_of(letter)
  ESPERANTO_ALPHABET.index(letter)
end

# ATTEMPT 1
# def alphabetize(arr)
#   # code here
#   arr.sort do |a,b|
#     ary_a = a.chars
#     ary_b = b.chars
#     index = 0
#     # figure out which aray is longer
#     if ary_a.count < ary_b.count
#       index = ary_a.count - 1
#     else
#       index = ary_b.count - 1
#     end
#     # loop through backwords storing the sort results
#     char_evals = []
#     until index == 0
#       char_evals << letter_sort(a[index],b[index])
#       index -= 1
#     end
#     result = char_evals.reduce(0) {|memo, val| memo += val}
#     -1 if result < 0
#     0 if result == 0
#     1 if result > 0
#   end
# end
# def letter_sort a, b
#   ind_a = ESPERANTO_ALPHABET.index(a)
#   ind_b = ESPERANTO_ALPHABET.index(b)
#   a <=> b
# end


# ATTEMPT 2
# def alphabetize(arr)
#   # code here
#   arr.sort do |a,b|
#     a_no_space = remove_spaces(a)
#     b_no_space = remove_spaces(b)
#     ind_a0 = ind_of(a_no_space[0])
#     ind_b0 = ind_of(b_no_space[0])
#     p_word_and_index(a_no_space,ind_a0)
#     p_word_and_index(b_no_space,ind_b0)
#     if ind_a0 < ind_b0
#       -1
#     elsif ind_a0 > ind_b0
#       1
#     else
#       0
#     end
#   end
# end
#
# def remove_spaces(word)
#   word.gsub("\s","")
# end
#
# def ind_of(letter)
#   ESPERANTO_ALPHABET.index(letter)
# end
#
# def p_word_and_index word, index
#   puts "A: word => #{word} => Index #{index}"
# end


# def alphabetize(arr)
#   # code here
#   arr.sort do |a,b|
#     strip_a = remove_spaces(a)
#     strip_b = remove_spaces(b)
#     arr_a = strip_a.chars.map { |e| ind_of(e)  }
#     arr_b = strip_b.chars.map { |e| ind_of(e)  }
#
#     compare_arr = nil
#     short_count = nil
#     if arr_a.count < arr_b.count
#       compare_arr = create_compare_arry(arr_a, arr_b)
#       short_count = arr_a.count
#     else
#       compare_arr = create_compare_arry(arr_b,arr_a)
#       short_count = arr_b.count
#     end
#
#     # compare each value within the 'compare_arr'
#     # if the values are the same check the next letter
#     # if the values are different,
#     i = 0
#     loop do
#       val = compare_arr[i]
#       ai = compare_arr[i][0]
#       bi = compare_arr[i][1]
#       if ai != bi
#         return compare_arr[i][0] <=> compare_arr[i][1]
#       end
#       i += 1
#       if i == short_count
#         break
#       end
#     end
#   end
# end
