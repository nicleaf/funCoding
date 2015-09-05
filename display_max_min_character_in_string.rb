#Using only core libraries, create a function which takes a string and outputs the character
# that appears the most along with its total count and the character that appears the least
# with its total count. In the event of a tie print the character with the lowest code point.
# Please provide your solution in a language of your choice and list any assumptions you
# make about the problem.

def display_max_min_character_in_string(str)
  hsh = {}
  string_arry = str.split(%r{\s*}).sort
  string_arry.each do |value|
    hsh[value] = 0 if hsh[value].nil? # this create the hash with zero count
    hsh[value] +=1 if hsh[value] # this count the character
  end
  puts "\n====== The hash ======"
  puts hsh
  puts "\n====== The result ======"
  puts "Max character is '#{hsh.key(hsh.values.max)}' = #{hsh.values.max} times."
  puts "Min character is '#{hsh.key(hsh.values.min)}' = #{hsh.values.min} times."
end

string = "abc )(*^&* abc & abcCCCCCCCCCCCCCC aaaaaaaaaaabba 123 123 123 1111111111111 4 bbbbbbbccccccccc here i am working on code exercise. ''''''''''''"
puts "\n====== The string ======"
puts string
display_max_min_character_in_string(string)