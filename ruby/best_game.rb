class BestGame
	attr_reader :word 
	attr_accessor :counter, :letter_counter, :storage, :matches, :solved, :try_counter

	def initialize(original_word)
		@word = original_word.split('')
		@solved = ['_'] * @word.length
		@counter = 0
		@letter_counter = 0
		@try_counter = 0
		@storage = ["the", "fuck"]
	end

	def correct(guessed_word)
		@matches = guessed_word.split('') & @word 
	end
end

puts "Enter a word to start!"
starting_word = gets.chomp
game = BestGame.new(starting_word)

until game.try_counter > game.word.length
	p game.solved
	puts "Guess what the word was!"
	guess = gets.chomp
	game.correct(guess)
	game.try_counter += 1
	
  if game.try_counter == game.word.length
    puts "You let me down...you got #{game.solved.join('')} out of #{game.word.join('')}."
  break
  elsif game.matches.empty?
    puts "Try again, pal!"
    game.matches.clear
	elsif game.storage.include?(guess)
	  game.try_counter -= 1 
	  puts "Duplicate word: No penalty."
	else
    game.storage << guess

    until game.letter_counter > game.word.length
  		if game.counter == game.word.length
  		  game.counter = 0 
  			game.letter_counter += 1
  		elsif game.matches[game.letter_counter] == nil
  			game.letter_counter = 0
  			break  			
  		elsif game.matches[game.letter_counter] == game.word[game.counter]
  			game.solved[game.counter] = game.matches[game.letter_counter]
  			game.counter += 1
  		else game.matches[game.letter_counter] != game.word[game.counter]
  			game.counter += 1
  		end
  	end
    if game.solved.join('') == game.word.join('')
      puts "Ya done did it! The answer is #{game.solved.join('')}."
      break
    end
    game.matches.clear
	end
end


# Pseudocode

=begin
user 1 enter string
user 2 guesses string (limit: string.length)
	repeated guesses dont take a limit
constant upadate
fill in any correct letters to string
congrats on win, u suk on lose


Enter a string

Guess a word or letter
.split(' ') compare, update if needed

until out of guesses

class

puts "Welcome to the game, please enter the word"
input = gets.chomp
game = BestGame.new(input)

ptus "hiding word"
@new_word = @word.split

puts "Player 2, guess"
input2 = gets.chomp.split(' ')

while gueses < @word.length


compare input2 to @word/input, fill in matching letters


completely new array, with dashes for length, fills in via index
p @attempt

.compare

input.length.times each do x
if input[x] is equal to word[0..x]

fill in input[x] at matched index
=end

# Most of the time when I wanna think I walk away from
# the computer, so the majority of my notes are chicken
# scratch on paper