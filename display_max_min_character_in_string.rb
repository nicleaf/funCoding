#Using only core libraries, create a function which takes a string and outputs the character
# that appears the most along with its total count and the character that appears the least
# with its total count. In the event of a tie print the character with the lowest code point.
# Please provide your solution in a language of your choice and list any assumptions you
# make about the problem.

def display_max_min_character_in_string(str)
  hsh = {}
  max_key = 0
  min_key = 0
  string_arry = str.split(%r{\s*}).sort
  string_arry.each {|value|  hsh[value] = 0 } # this create the hash with zero count
  string_arry.each {|value|  hsh[value] +=1 } # this count the character
  puts hsh
  # this handle the max
  for i in 1..hsh.length-1 do
    if hsh[hsh.keys[max_key]] < hsh[hsh.keys[i]]
      max_key = i
    end
  end
  puts "Max character is '#{hsh.keys[max_key]}' = #{hsh[hsh.keys[max_key]]} times."
  # this handle the min
  for i in 1..hsh.length-1 do
    if hsh[hsh.keys[min_key]] > hsh[hsh.keys[i]]
      min_key = i
    end
  end
  puts "Min character is '#{hsh.keys[min_key]}' = #{hsh[hsh.keys[min_key]]} times."
end

string = "abc )(*^&* abc abcCCCCCCCCCCCCCC aaaaaaaaaaabba 123 123 123 1111111111111 4 bbbbbbbccccccccc here i am working on code exercise. ''''''''''''"
puts string
display_max_min_character_in_string(string)
