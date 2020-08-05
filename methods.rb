# def baseball_team_list 
#   puts ["A's", "Angels", "Astros"]
# end

# def second_baseball_team_list 
#   x = 15
#   return ["A's", "Angels", "Astros"] if x == 10
#   ["Yankees", "Mets"]
# end

# p baseball_team_list
# p second_baseball_team_list

# class Invoice
#   #class method
#   def self.print_out
#     p "Print"
#     "Print"
#   end

#   #Instance method
#   def convert_to_pdf
#     p "Converted to PDF"
#     "Converted to PDF"
#   end
# end

# # call a class method
# Invoice.print_out

# # ca;; an instance method
# i = Invoice.new
# i.convert_to_pdf

# closures/procs

# full_name = Proc.new { |first, last| first + " " + last }
# p full_name["Lloyd", "Noone"] 
# p full_name.call("Lloyd", "Noone")

# full_name2 = Proc.new do |first|
#   first * 5
# end

# p full_name2["Lloyd"]


# lambdas
# first_name = lambda { |first, last| first + " " + last }
# p first_name["Lloyd", "Noone"]

# stabby lambda
# first_name =  ->(first, last) { first + " " + last }
# p first_name["Lloyd", "Noone"]

## difference between pros and lambdas

# argument count

# will throw an error is lambda has too many arguments
# full_name = lambda { |first, last| first + " " + last }
# p full_name.call("Lloyd", "None", "Noone")

# a Proc will just use the first 2
# full_name = Proc.new { |first, last| first + " " + last }
# p full_name.call("Lloyd", "None", "Noone")

# Return behaviour

# lambda only returns from block not outer method
# def my_method
#   x = lambda { return }
#   x.call
#   p "Text from within the method"
# end

#proc returns out of itself and the outer function
# def my_method
#     x = Proc.new { return }
#     x.call
#     p "Text from within the method"
# end

# my_method

### comprehensive method guide
# with parens
# def full_name(first_name, last_name)
#   first_name + " " + last_name
# end

# puts full_name("Lloyd", "Noone")

#without parens
# def full_name first_name, last_name
#   first_name + " " + last_name
# end

# puts full_name "Lloyd", "Noone"

## named arguments

# def print_address city:, county:, postcode:
#   puts city
#   puts county
#   puts postcode
# end

# print_address city: "Manchester", county: "Lancs", postcode: "M6 7ja"

# def sms_generator api_key:, num:, msg:, locale:
#   # magic sms stuff
# end

# sms_generator api_key: '987234how', num: 5555555555, msg: 'hey there', locale: 'UK'

## default arguments
# def stream_movie title:, lang: "ENG"
#   puts title
#   puts lang
# end

# stream_movie title: "The English Patient", lang: "FR"

### splats

# long way
# def roster player_1, player_2, player_3
#   puts player_1
#   puts player_2
#   puts player_3
# end

# roster 'Altuve', 'Gattis', 'Springer'

# short way
# def roster *players
#   puts players
# end

# roster 'Altuve', 'Gattis', 'Springer', 'Bregman', 'Correra'

## keyword splat argument

# def roster **players_with_positions
#   players_with_positions.each do |player, position|
#     puts "Player: #{player}"
#     puts "Position: #{position}"
#     puts "\n"
#   end
# end

# data = {
#   "Altuve": "2nd Base",
#   "Alex Bregman": "3rd Base",
#   "Evan Gattis": "Catcher",
#   "George Springer": "OF"
# }

# roster data

## optional arguments
def invoice options={}
  puts options[:company]
  puts options[:total]
  puts options[:something_else]
end

invoice company: "Google", total: 100.0, something_else: "asdf"
