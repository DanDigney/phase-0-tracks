class BestGame
	attr_reader
	attr_accessor

	def initialize(original_word)
		@word = original_word.split('')
		@counter = 0
		@letter_counter = 0
		@storage
	end

	def correct(guessed_word)
		@matches = guessed_word.split('') & @word 
	end
end

puts "Enter a word to start!"
starting_word = gets.chomp
game = BestGame.new(starting_word)


until counter > word.length
	puts "PLAYER TWO! Enter your guess!"
	guess = gets.chomp
	game.correct(guess)
		if counter == word.length
	      letter_counter += 1 
	      counter = 0
	    elsif matches[letter_counter] == nil
	      counter = word.length + 1
	    elsif matches[letter_counter] == word[counter]
	      new_array[counter] = matches[letter_counter]
	      counter += 1 
	    elsif matches[letter_counter] != word[counter]
	      counter += 1 
		else matches.empty?
			puts "Try again"
			redemption = gets.chomp
			game.correct(redemption)
		end
end