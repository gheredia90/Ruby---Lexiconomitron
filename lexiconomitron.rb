class Lexiconomitron

	def eat_t(string)
		string.delete("/[tT]/")
	end	

	def shazam(array_words)
		array_words_reversed = array_words.map{|word| eat_t(word.reverse)}
		[array_words_reversed[0], array_words_reversed[-1]]
	end	

end	

# array_words = ["This", "is", "a", "boring", "test"]
# puts l = Lexiconomitron.new.eat_t("capo")
# print a = Lexiconomitron.new.shazam(array_words) 
# puts "" 