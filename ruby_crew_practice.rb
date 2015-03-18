# ------------.send----------Kenny Trionfo---2/24/2015--------
	# How can you code this using .send?: 
	# "hi i'm kenny".upcase 
	# And, why would you want to use this? 
	# Answer: 
	# puts "hi, i'm kenny".upcase
	# puts "hi, i'm jdawg".send("upcase")
	# "hi i'm kenny".send(:upcase)
	# Use this when what you are passing in an argument that may need to change. 

#-----------.select-----------Kenny Trionfo---3/17/2015--------
	# Create a method with a parameter new_name that: 
	# - assigns a hash to a var. 
	# - puts one of the values of the hash. 
	# - changes that same value by assigning it the string value of the parameter passed into it. 
	# - puts the new value. 
	# Call the method, passing in an argument to the param. 
	# Answer:  

	# def hash_insert(new_var)
	# 	hash = {first_name: "Bily", age: 343, color: "Pinkish"}
	# 	puts hash[:age] 
	# 	hash.[]=(:age, new_var)
	# 	puts hash[:age] 
	# 	hash[:age]=new_var
	# end 
	# hash_insert("Chris") 

	# print "Hello. Please enter a Celsius value: "
	# celsius = gets
	# fahrenheit = (celsius.to_i * 9 / 5) + 32
	# print "The Fahrenheit equivalent is: "
	# print fahrenheit
	# puts "."
	#Answer:  

	# print "hi, give a value dude"
	# puts "the equiv is #{gets.to_i * 9 / 5 + 32 }

#------------Parameters----------Kenny Trionfo---3/17/2015--------
	# def cat_sound(meow)
	# 	puts meow
	# end
	# cat_sound("mello")

	# def dog_sound(bark = "ruff", **attrs)
	# 	puts  bark,  attrs
	# end
	# dog_sound(bark: "ruff ruff", tail_wagging: "yes")

#------------ refactor excercise ----------Kenny Trionfo---1/19/2015--------
	# refactor the first into something like the second.
	# Also indentify the expressions in each of these blocks. 

	# print "Hello. Please enter a Celsius value: "
	# celsius = gets
	# fahrenheit = (celsius.to_i * 9 / 5) + 32
	# print "The Fahrenheit equivalent is: "
	# print fahrenheit
	# puts "."
	#Answer:  

		# print "Hello. Please enter a Celsius vlaue: "
		# print "The Fahrenheit equivalent is ", (gets.to_i * 9 / 5 + 32), ".\n"




# ================================================
#   ==========     NEW DRILLS     ============
# ================================================
	# Rubies console drills with: 
	# gem install rubies
	# in the console then
	# rubies
	# in the console