# if else

# x = 10
# y = 5

# if x == y
#   puts "x is the same as y"
# else
#   puts "x and y are not the same"
# end

#unless

# players = ["Corea", "Carter", "Altuve"]

# unless players.empty?
#   players.each {|player| puts player}
# end

# #oneliners
# players.each {|player| puts player} unless players.empty?
# players.each {|player| puts player} if !players.empty?


## elsif
x = 10
y = 100
z = 10

# if x == y
#   puts "x is equal to y"
# elsif x >= z
#   puts "x is greater than or equal to z"
# elsif x >= y
#   puts "x is greater than or equal to y"
# else 
#   puts "something else"
# end

# compound conditionals
if (x == 10 && x == z) || x == y
  puts "from the if statement"
end
