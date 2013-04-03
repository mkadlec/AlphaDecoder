$alphabet = ".abcdefghijklmnopqrstuvwxyz"

print "Enter a code: "
code = gets.chomp

def decode(array, word)

	if array.size == 0
		puts word
		return
	end
	
	index = array[0].to_i 
	if index > 0
		word += $alphabet[index]
	else
		word = ""
		array = ""
		return
	end
	
	restOfWord = array.slice(1..array.size-1)
	decode(restOfWord, word)	
	
	if array.size > 1
		doubleDigit = array.slice(0..1).to_i

		if doubleDigit < $alphabet.size
			# remove the previous single digit from the current word
			word = word.size == 1 ? "" : word.slice(0..word.size-2)
			
			word += $alphabet[doubleDigit]
			restOfWord = array.slice(2..array.size-1)
			decode(restOfWord, word)
		end
	end
	
end

decode(code, "")