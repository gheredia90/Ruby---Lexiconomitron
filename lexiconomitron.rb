class Lexiconomitron

	def eat_t(string)
		string.delete("/[tT]/")
	end	

	def shazam(array_words)
		array_words_reversed = array_words.map{|word| eat_t(word.reverse)}
		[array_words_reversed[0], array_words_reversed[-1]]
	end	

	def oompa_loompa(array_words)
		array_cut = array_words.select{ |word| word.length<=3 }
		array_cut.map!{|word| eat_t(word)}
	end	

end