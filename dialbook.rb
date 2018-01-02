# method to display all city names
def cities(book)
	book.each {|k, v| puts k}
end

# method to get area code from the book of area codes, with the given city to lookup
def getArea(book, lookup)
	if book.key?(lookup)
		areacode = book[lookup]
		puts "The area code for #{lookup} is #{areacode}."
	else
		puts "#{lookup} not found in book, please try again or type view to see available cities."
	end
end

# cities and areacodes, to be populated by a hash of cities and area codes
dial_book = {
	"newyork" => 212,
	"pittsburgh" => 412
}

# Check if the user wants to look up a city name
loop do
	puts "Do you want to look up a city name? (Y/N)"
	answer = gets.chomp
		
  # If not, close the program
	if answer.capitalize != "Y"
		break
    
  # If so, they can view all available cities, or search for their city
	else 
		puts "Enter the city name, or to see available cities type view."
		lookup = gets.chomp # This should allow for any capitalization and spacing
		if lookup.downcase == 'view'
			cities(dial_book)
		else
			getArea(dial_book, lookup)
		end
	end
end
