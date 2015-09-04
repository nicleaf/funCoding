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
  string_arry.each {|value|  hsh[value] = 0 }
  string_arry.each {|value|  hsh[value] +=1 }
  p hsh
  for i in 1..hsh.length-1 do
    if hsh[hsh.keys[max_key]] < hsh[hsh.keys[i]]
      max_key = i
    else
      max_key = max_key
    end
  end
  puts "Max character is #{hsh.keys[max_key]} = #{hsh[hsh.keys[max_key]]} times."

  for i in 1..hsh.length-1 do
    if hsh[hsh.keys[min_key]] > hsh[hsh.keys[i]]
      min_key = i
    else
      min_key = min_key
    end
  end
  puts "Min character is #{hsh.keys[min_key]} = #{hsh[hsh.keys[min_key]]} times."
end

string = "abc )(*^&* abc abcCCCCCCCCCCCCCC aaaaaaaabba 123 123 123 1111111111111 4 bbbbbbbccccccccc here i am working on code exercise. ''''''''''''"
puts string
display_max_min_character_in_string(string)