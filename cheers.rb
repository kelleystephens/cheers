# Build on the results of our in-class exploration to output, for example:
#
# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.
#
# Note: the “a” vs. “an”

puts "What's your name?"
name = gets.chomp.upcase
if name.empty?
  puts "You must enter a name!"
  exit
end

name.each_char do |char|
  vowels = "AEFHILMNORSUX"
  letter = char
  article = (vowels.include? letter) ? "an" : "a"
  puts "Give me #{article}... #{char}!"
  end
puts "#{name}'s just GRAND!"
