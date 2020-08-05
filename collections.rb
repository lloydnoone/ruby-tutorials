# # creating arrays
# x = [12,3,454,234,234]
# y = Array.new
# y[0] = 543
# # nil values ######
# y[10] = 432

# y.each do |i|
#   puts i
# end

# remove items from an array
# x = ['asdf',3,true,234,234,4,4,4,4,0.2]
# x.delete(4)
# puts x.delete_at(2)
# puts x.length

# batting_averages = [0.300, 0,180, 0.220, 0.250]
# batting_averages.delete_if {|average| average < 0.24}
# puts batting_averages

# join method
#teams = ["astros", "yankees", "ranger", "mets", "cardinals"]

# puts teams.join(',')

# push method
# teams.push('marlins')
# puts teams
# teams.push('red sox', 'blue jays')
# puts teams
# x = teams.pop
# puts x

# hashes
# declare a hash
# positions = { first_base: "Chris Carter", second_base: "Jose Altuve", short_stop: "Carlos Correa"}

# #alternate way to create a hash
# # positions = { "first_base" => "Chris Carter", "second_base" => "Jose Altuve", "short_stop" => "Carlos Correa"}

# # positions = { :first_base => "Chris Carter", :second_base => "Jose Altuve", :short_stop => "Carlos Correa"}

# #grab an element based on key
# puts positions[:second_base]

people = {Lloyd: 32, Eve: 32, Clarke: 39}
# puts people[:Lloyd]
# puts people.delete(:Clarke)

# iterate over keys or value of a hash
# people.each_key do |key|
#   puts key
# end

# people.each_value do |value|
#   puts value
# end

#Other Hash methods
#add to a hash
people[:lewis] = 42
puts people

#invert method
puts people.invert

#merge
people2 = people.invert
puts people.merge(people2)

#convert hash to array
puts people.to_a

puts people.keys
puts people.values


