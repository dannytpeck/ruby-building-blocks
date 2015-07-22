class Cipher

	def initialize(shift)
		@shift = shift
	end

	def caesar(initial_sentence)
		new_sentence = []
		letters = initial_sentence.chars
		letters.each do |letter|
			@shift.times do
	  			letter = shift_one_letter(letter)
	  		end
	  		new_sentence << letter
		end
		new_sentence.join
	end

	def shift_one_letter(initial_letter)
		return "a" if initial_letter == "z"
		return "A" if initial_letter == "Z"
		if /[^A-Za-z]/.match(initial_letter)
			return initial_letter 
		else
			return initial_letter.next
		end
	end

end

c = Cipher.new(5)
puts c.caesar("What a string!")