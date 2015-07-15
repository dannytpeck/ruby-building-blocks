def shift_one_letter(initial_letter)
	return "a" if initial_letter == "z"
	return "A" if initial_letter == "Z"
	if /[^A-Za-z]/.match(initial_letter)
		return initial_letter 
	else
		return initial_letter.next
	end
end

def caesar_cipher(initial_sentence, shift_amount)
	new_sentence = []
	letters = initial_sentence.chars
	letters.each do |letter|
		shift_amount.times do
  			letter = shift_one_letter(letter)
  		end
  		new_sentence << letter
	end
	new_sentence.join
end

puts caesar_cipher("What a string!", 5)