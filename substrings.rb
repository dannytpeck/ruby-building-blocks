dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own",
"part","partner","sit"]

def substrings(sentence, dictionary)
	results = Hash.new
	dictionary.each do |word|
		results[word] = sentence.downcase.scan(word).size if sentence.downcase.include?(word)
	end
	results
end

print substrings("below", dictionary)
puts
print substrings("Howdy partner, sit down! How's it going?", dictionary)