
def begins_with_r(array)

	output = array.find { |word|
			word[0] != "r"
	}

	(output == nil) ? true : false

end  

#####################################################

def contain_a(array)
# "return all elements that contain the letter 'a'"
	words = []
	array.each { |word|
		if (word.include? "a")
			words << word
		end
	}

	return words
end

####################################################

def first_wa(array)
# "Return the first element that begins with the letters 'wa'"

array.each { |elem|

	if (elem[0] == "w" && elem[1] == "a")
		return elem
	end 

}
end

##################################################

def remove_non_strings(array)
	# "remove anything that's not a string from an array"
	cleaned = []

	array.each { |elem|
		
		if ( elem.class == String )
			cleaned << elem
		end 
	}
	return cleaned
end 

#################################################

def count_elements(array)
	# 'count how many times an element appears in an array'
	names = []

	array.each { |obj| 
		names << obj.values
	}

	print names.flatten!

	counts = Hash.new 0
	names.each { |word|
		counts[word] += 1
	}
	puts ""
	puts counts
	puts "\n"

	return_array = []
	counts.each { |k,v|
		return_hash = {}	
		return_hash[:name] = k
		return_hash[:count] = v
		return_array << return_hash
	}
	print return_array

	return return_array

end 

##################################################################




