class Ice_cream

	def set_flavor=(flavor_type)
		@flavor = flavor_type
	end

	def get_flavor
		return @flavor
	end

	def set_brand=(brand_type)
		@brand = brand_type
	end

	def get_brand
		return @brand
	end

	def yummy
		return "yumm....."
	end
end

my_icecream = Ice_cream.new
my_icecream.set_flavor= "chocolate"
icecreamflavor = my_icecream.get_flavor
my_icecream.set_brand= "Ben & Jerry's"
icecreambrand = my_icecream.get_brand
puts "#{icecreambrand} #{icecreamflavor} ice cream makes me say #{my_icecream.yummy}"

puts my_icecream.inspect