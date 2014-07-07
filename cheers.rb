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

require 'date'

puts "What's your name?"
name = gets.chomp
if name.empty?
  puts "You must enter a name!"
  exit
end

name.each_char do |char|
  vowels = "aefhilmnorsux"
  letter = char
  article = (vowels.include? letter) ? "an" : "a"
  puts "Give me #{article}... #{char.upcase}!"
  end
puts "#{name.upcase}'s just GRAND!"

puts "Hey, #{name.capitalize}, what's your birthday?"

bday = Date.parse(gets.chomp)
this_year = Date.new(Date.today.year,   bday.month, bday.day )
if this_year > Date.today
  days = (this_year - Date.today).to_i
else
  days = (Date.new(Date.today.year + 1,   bday.month, bday.day ) - Date.today).to_i
end
puts "Awesome! Your birthday is in #{days} days! Happy Birthday in advance!"
