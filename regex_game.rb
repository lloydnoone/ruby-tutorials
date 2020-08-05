starting_sentence = "Hi from matching land"
sentence_array = starting_sentence.split("").map(&:downcase)
# removes empty spaces
accurate_count = sentence_array - [" "]
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")

while sentence_array.count("") < accurate_count.count
  puts "Guess a letter:"
  guess = gets.downcase.chomp

  if sentence_array.include?(guess)
    letter_index = sentence_array.find_index(guess)
    sentence_array[letter_index] = ""
    final_sentence[letter_index] = guess
    puts "Correct! The Sentence is now: #{final_sentence.join}"
  else
    puts "Sorry, that isnt the right answer, please try again. "
  end
end