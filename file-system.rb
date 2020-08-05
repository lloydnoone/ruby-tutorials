#File.open("teams.txt", 'w+') {|f| f.write("Twins, Astros, Mets, Yankees")}

# file_to_save = File.new("teams.txt", 'w+')
# file_to_save.puts("A's, Diamondbacks, Mariners, Marlins")
# file_to_save.close

# teams_one = File.read("teams.txt")
# teams_two = File.read("teams.txt")

# teams_master = teams_one.split(', ') + teams_two.split(', ')

# teams_master.each do |team|
#   p team.upcase
# end

#File.delete("teams.txt")

10.times do
  sleep 1
  puts "Record saved..."
  File.open("teams.txt", "a") {|f| f.puts "Server started at: #{Time.new}"}
end
