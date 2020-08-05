# arr = ['hey.rb', 'there.rb', 'index.html']
# puts arr.select{|x| x =~ /\.rb/}.map{|x| x[0..-4]}

arr.grep(/(.*)\.rb/){$1}