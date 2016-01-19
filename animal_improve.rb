#simplified to one class "Animal" and added animal type; all other variables are the same in these classes.
#if ferret, chinchilla, parrot distinction is necessary could leave multiple class.
#class needs to be Captalized
class Pet
	def set_animal= (animal_type)
		@animal = animal_type
	end

	def get_animal
		return @animal
	end
 #set_name= removes space between = sign
	def set_name= (animal_name)
		@name = animal_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
end

class Ferret < Pet
	def squeal
		return "squeeeeee"
	end
end

class Chinchilla < Pet
	def squeek
		return "eeeep"
	end
end

class Parrot < Pet
 	def squawk
		return "That's what she said. SQAUWK"
	end
 end
 	
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferretname = my_ferret.get_name
 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrotname = my_parrot.get_name
 #spell correctly chinchilla
my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"
chinchillaname = my_chinchilla.get_name
 
puts "#{ferretname} says #{my_ferret.squeal}, 
#{parrotname} says #{my_parrot.squawk}, 
and #{chinchillaname} says #{my_chinchilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect