# while loop

# i = 0

# while i <= 10
#   puts "Hey There"
#   i += 1
# end

#arr = [123, 234, 345, 456, 4567]

# arr.each do |i|
#   p i
# end

#arr.each { |i| p i }

# for in loops

# for i in 0..42
#   p i
# end

### nested iterators
# teams = {
#   "Houston Astros" => {
#     "first base" => "Chris Carter",
#     "second base" => "Jose Altuve",
#     "shortstop" => "Carlos Correa"
#   },
#   "Texas Rangers" => {
#     "first base" => "Prince Felder",
#     "second base" => "R. Odor",
#     "shortstop" => "Elvis Andrus"
#   }
# }

# # each do |key, value|
# teams.each do |team, players|
#   puts team
#   players.each do |position, player|
#     p "#{player} starts at #{position}"
#   end
# end

### enumerators
# select method
# given an array of integers, only grab the even ints

# x = 0

# while x < 100
#   if x % 2 == 0
#     puts x
#   end
#   x += 1
# end

# (1..10).to_a.select do |x|
#   puts x.even?
# end

# # shorter
# (1..10).to_a.select { |x| puts x.even? }
# #even shorter, ampersand bypasses need for iterator
# (1..10).to_a.select(&:even?)

# given an array of strings, return only words that are over 5 letters
# arr =  %w(The quick brown fox jumped over the lazy dog)

# puts arr.select { |x| x.length > 4 }

# return all of the vowels

# %w(a b c d e f g).select { |v| v =~ /[aeiou]/ }

# puts ['1','23.0','0','4'].map {|x| x.to_i }
# puts ['1','23.0','0','4'].map(&:to_i)

# puts ('a'..'g').to_a.map {|i| i * 2}

# puts Hash[[1, 2.1, 3.33, 0.9].map {|x| [x,x.to_i]}]

# convert an array of string into a hash which has the string as a akey and the value is length

# puts Hash[%w(A dynamic open source programming language).map {|x| [x,x.length]}]

#|a,b| = |key,value|
# hash = {:a => "foo", :b => "bar"}.map{|a, b| "#{a}=#{b}"}.join('&')
# puts hash

### inject method
## old way
# total = 0
# [1, 2, 3, 4, 53, 5, 3, 233343, 343, 5674, 21, 3].each do |i|
#   total += i
# end
# puts total

## inject instead
#puts [1, 2, 3, 4, 53, 5, 3, 233343, 343, 5674, 21, 3].inject(&:+)

