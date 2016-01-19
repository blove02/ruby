class Ice_cream

	attr_accessor :flavor, :brand

	def yummy
		return "yumm....."
	end
end

my_icecream = Ice_cream.new
my_icecream.flavor= "chocolate"
icecreamflavor = my_icecream.flavor
my_icecream.brand= "Ben & Jerry's"
icecreambrand = my_icecream.brand
puts "#{icecreambrand} #{icecreamflavor} ice cream makes me say #{my_icecream.yummy}"

puts my_icecream.inspect