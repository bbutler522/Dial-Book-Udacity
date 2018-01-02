# method to display city names
def cities(book)
  book.each {|k, v| puts k}
end

# method to get area code, dial book, city name
def getArea(book, lookup)
  if book.key?(lookup)
    areacode = book[lookup]
    puts "The area code for #{lookup} is #{areacode}."
  else
    puts "#{lookup} not found in book, please try again or type view to see available cities."
  end
end


dial_book = {
  "newyork" => 212,
  "pittsburgh" => 412
}

#
loop do
  puts "Do you want to look up a city name? (Y/N)"
  answer = gets.chomp
    
  if answer.capitalize != "Y"
    break
  end
  puts "Enter the city name, or to see available cities type view."
  lookup = gets.chomp
  if lookup.downcase == 'view'
    cities(dial_book)
  else
    getArea(dial_book, lookup)
  end
end
