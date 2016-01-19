number = (1..100).to_a

number.each do |divide|
	if divide%3 == 0 && divide%5 == 0
			puts "fizzbuzz"
		elsif divide%3 == 0
			puts "fizz"
		elsif divide%5 == 0
			puts "buzz"
		else
			puts divide
	end
end