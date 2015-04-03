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

# https://www.bloc.io/ruby-warrior

# Some git practice

# Do a training on using github to do with the crew

#------------PUlling orders from shopify using RestClient HTTP REST API----------Kenny Trionfo---4/2/2015--------
	# This is the code in shopify gem: 
	# res = RestClient.get "#{url_base}/orders.json?status=open&fulfillment_status=unshipped&updated_at_min=#{api_detail[:last_import]}".gsub(/ /,"%20")
	# this needs to be updated to account for timezone issues. 
	# Try and get the timezone from Pitayapluses shopify account: 
	# - start by testing in postman to get the timezone (see https://docs.shopify.com/api/shop)
	# - then look at how I am calling the api in the shopify integrator and do a similar call, except to the shop endpoint to get the time zone
	# - store the time zone as an api detail
	# - add logic in the api call (during the import) to adjust the last import time appropriate for the difference between their time zone and our time zone
	# Here's my code for testing in ruby_drills: 
	# require 'rest_client'
	# var = RestClient.get 'https://907103ce85446d8eaff1b41cfe73b7b9:663fc050410d0863d6a9f8d9092b858d@pitayaplus.myshopify.com/admin/shop.json?shop'
	# timezone = JSON.parse(var)["shop"]["timezone"]
	# puts timezone

