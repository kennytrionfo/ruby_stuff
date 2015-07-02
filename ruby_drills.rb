#----- PUT ON TIMER!   ctrl + K, ctrl + 1 to fold.

# MAKE THESE EXCERCISES SOMETHING WHERE i HAVE TO DESCRIBE WHAT'S GOING ON OR DESCRIBE THE CODE SO AS TO GET PRACTICE UNDERSTAND WHAT THINGS ARE DOING BY LOOKING AT THEM



#-------Describe equation-----------------------------
	# Describe this: 
	# self.order_map = IntegrationTables::OrderMap.where(cust_id:cust_id).where("#{"api_name=?" if api_name}",api_name).first
	# Go to the OrderMap class within the IntegrationTables module and find the first order map that has a cust_id of cust_id and where api_name is api_name if 

#------------Tic Tac Toe----------Kenny Trionfo---2/24/2015--------
	# Build an interactive tic tac toe game.
	# like the one we tried in dpl. 

#------------.send----------Kenny Trionfo---2/24/2015--------
	# How can you code this using .send?: 
	# "hi i'm kenny".upcase 
	# And, why would you want to use this? 
	# Answer: 

	# "hi i'm kenny".send(:upcase)
	# Use this when what you are passing in to send may change. 

#------------Describe .select & .first----------Kenny Trionfo---2/23/2015--------
	# Describe the following: 
	# Note: carrier_map is a hash. 
	# return carrier_map.select{|x| x['cust_service_code']==cust_service_code}.first['ic_service_code'] unless carrier_map.blank?
	# Answer here: 

	#Search through the carrier_map array of hashes, selecting all of the hashes(objects) that have a key of 'cust_service_code' and a value of whatever variable that holds the string_argument we pass into the find_ic_service_code method (cust_service_code), and take the first one of those and return the value of the key 'ic_service_code'.
		# Drill: 
	# Create a method with a parameter new_name that: 
	# - assigns a hash to a var. 
	# - puts one of the values of the hash. 
	# - changes that same value by assigning it the string value of the parameter passed into it. 
	# - puts the new value. 
	# Call the method, passing in an argument to the param. 
	# Answer:  

	# def hash_insert(new_name)
	# 	hash = {first_name: "Bily", age: 342, color: "Pinkish"}
	# 	puts hash[:first_name]
	# 	hash[:first_name]=new_name
	# 	puts hash[:first_name]
	# end
	# hash_insert("Kenny")

#------------Describe unless statment----------Kenny Trionfo---2/23/2015statement
	# Describe the following statement: 
	# unless customer_order.blank?
	# 	import_header = convert_customer_order_to_import_header customer_order
	# 	return import_header
	# end
	# Answer: 

	# unless can be replaced with "is anything but.." or "if <whatever> is not blank, then..." or "if <the following object or expression> is true, skip the following block and keep going, otherwise do the following block".
	# If customer_order is anything but blank (or in other words "not blank"), then do the following block, otherwise keep going. 

#----------bash stuff------------Kenny Trionfo---2/25/2015--------
	# Here:
	# http://cbednarski.com/articles/understanding-environment-variables-and-the-unix-path/
 
#------------ irb, irb exec, rails c etc----------Kenny Trionfo---1/30/2015--------
	#Website: 
	#  http://www.justinweiss.com/blog/2014/11/17/what-are-the-differences-between-irb/
	  
#------------mysql's =? in Ruby----------Kenny Trionfo---3/23/2015--------
	# Used in mysql when you want to pass in the value of the key/value pair. 
	# So instead of just: 
	# .where(name:customer.name)
	# which interprets into a=1 in the mysql query
	# you would use: 
	# .where("name=customer.name")
	# and mysql interprets that into the same a=1 in the mysql queary as the above .where(a:1) does. 
	# so
	# .where("name=?", customer.name)
	# allows you to pass customer name in to the ? instead of assigning it. 
	# So this code from ic integrator: 
	# self.order_map = OrderMap.where(cust_id:cust_id).where("#{"api_name=?" if api_name}",api_name).first
	# translates to: 
	# This instance of IcIntegrator.order_map is OrderMap where the cust_id is the cust_id passed in and where first api_name (the first one in the sentence above) is the api_name after the api_name after the comma but only if api_name is true (or exists). This prevents us from using one that is nil. 

#------------Raise for debugging and throwing errors----------Kenny Trionfo---5/6/2015--------
	# Use raise to debug a method or through and error.
	# Answer:

	# def raise_test(random)
	# 	raise "The random parameter you passed in is less than 5." if random < 5
	# 	puts "The number #{random} is greater than 4"
	# end
	# raise_test 4

#------------P and .inspect----------Kenny Trionfo---5/5/2015--------
	# p foo does puts foo.inspect, i.e. it prints the value of inspect instead of to_s, which is more suitable for debugging (because you can e.g. tell the difference between 1, "1" and "2\b1", which you can't when printing without inspect).

#------------Regex----------Kenny Trionfo---3/12/2015--------
	# http://regex.learncodethehardway.org/book/ex0.html
	# Sensei used this: 
	# order_number.*?shipping_lines":\[\]
	# to find an order number in and order file by putting this in the search 
	# http://regexcrossword.com/	

	# Chris's regex example: I was using the regex search feature on sublime and I used an expression that I think does a pretty good job showcasing some things that I remember you guys having some difficult with, so I figured I'd take some time and break it down for you in the hopes that it will help you guys out.  Here's the expression that I used: 
	# ('|")-table\1[ \t]*=>[ \t]*('|")_settings\2 
	# I'll just break this down in terms of what I'm trying to match character by character.  So the first thing that I want to see is the start of a string. Because it will either start with a single- or double-quote, that's the first thing that I want to match. I accomplish this with the character group 
	# ('|"). This will match either a single-quote or a double-quote. 
	# I want the content of this string to be -table, so that's what I have next. After that, the character to close the string needs to exactly match the character that started it. In other words, if it started with a single-quote, it needs to end with a single-quote. This is accomplished in regular expressions using back references which match whatever is matched in the corresponding number's group (whatever is in parentheses). In this case, because it's \1 it will match whatever was matched in the first left parenthesis (\2 will match the second, \3 the third, etc.), so it does its job matching the character that closes the string. 
	# The next thing I'm looking for is any amount of white space, other than new lines. I do this using a character class that I defined as [ \t] (there is a space before the \t in case you can't see it), and the * after that class indicates that there can be any number of them (including none). This is followed by => (because I'm looking for a value being set in an array) and again by [ \t]*. I'm then looking for another string that contains _settings, so I have a similar set-up to the beginning of this expression but I'm using \2 instead of \1 because I'm looking to match the second group rather than the first.  In this case it matched the following strings:  '-table'=>'_settings' '-table'=>"_settings"  These examples also would have matched if any of them were extant:  "-table"    => '_settings' "-table" =>    "_settings" "-table"                =>                                                                                    '_settings'  These would not match (and would cause problems in PHP anyway):  '-table" => "_settings" "-table' => '_settings"  One other thing about back references and groups is that you can have groups inside of groups, and you can use back references to reference these groups.  For example take the expression ([a-z]([a-z]))\1\2  This will always match a string that is exactly five characters long. The first and second characters will be any alphabet character followed by any single digit, but the next three are a little bit more complicated. As I said before back references work off of left parentheses (or opening parentheses), so \1 will match whatever is between the first left parenthesis and the matching parenthesis that closes it. In this case it's the entire ([a-z]([0-9])), so \1 will exactly match the first two characters meaning that the third character will be the same as the first, and the fourth will be the same as the second. Logically, this would mean that \2 would match whatever is between the second left parenthesis and its closing counterpart, which would be whatever is matched by in the highlighted portion here: ([a-z]([0-9])). This means that the fifth character will be the same as the second (and, incidentally, the fourth, but it's more important that it matches the second).  Here are a few examples of what would match:  a1a11 b2b22 a2a22 z8z88 x5x55  Historically, I feel that I haven't been very good at explaining things like this, so I tried to make it as comprehensive and unambiguous as I could. If anything is confusing or contradictory, or if you have any other questions about this or regular expressions in general, let me know and I'll try to clear it up or answer your questions.

#----------HTTP Requests & Stuff------------Kenny Trionfo---3/25/2015--------
	# HTTP: 
	# - Is an application-level protocol for distributed, collaborative, hypermedia information systems.
	# - Is a TCP/IP based communication protocol, that is used to deliver data (HTML files, image files, query results, etc.) on the World Wide Web. The default port is TCP 80, but other ports can be used as well.

	# There are three basic features that make HTTP a simple but powerful protocol:
	# 1. HTTP is connectionless: The HTTP client, i.e., a browser initiates an HTTP request and after a request is made, the client disconnects from the server and waits for a response. The server processes the request and re-establishes the connection with the client to send a response back.
	# 2. HTTP is media independent: It means, any type of data can be sent by HTTP as long as both the client and the server know how to handle the data content. It is required for the client as well as the server to specify the content type using appropriate MIME-type.
	# 3. HTTP is stateless: As mentioned above, HTTP is connectionless and it is a direct result of HTTP being a stateless protocol. The server and client are aware of each other only during a current request. Afterwards, both of them forget about each other. Due to this nature of the protocol, neither the client nor the browser can retain information between different requests across the web pages.

	# An HTTP client sends an HTTP request to a server in the form of a request message which includes following format:
	# 1. A Request-line
	# 2. Zero or more header (General|Request|Entity) fields followed by CRLF
	# 3. An empty line (i.e., a line with nothing preceding the CRLF) 
	# indicating the end of the header fields 
	# 4. Optionally a message-body  

#------------APIs----------Kenny Trionfo---3/25/2015--------
	# APIs: 
	# - Are sets of requirements that govern how one application can talk to another.
	# - that are on the Web, make it possible for big services like Google Maps or Facebook to let other apps "piggyback" on their offerings.
	# - simplify things by limiting outside program access to a specific set of features—often enough, requests for data of one sort or another.
	# - clearly define exactly how a program will interact with the rest of the software world.
	# listen to Jeff's explanation on apis on my phone. 

#----------RestClient------------Kenny Trionfo---4/30/2015--------
	# it's a ruby gem that helps you make http requests. 
	# http://www.theodinproject.com/ruby-on-rails/let-s-get-building      

	# require 'rest_client'
	# var = RestClient.get 'http://example.com/resource'
	# puts var

#------------JSON----------Kenny Trionfo---3/20/2015--------
	# http://www.copterlabs.com/blog/json-what-it-is-how-it-works-how-to-use-it/
	# Parse the following: 

#------------YAML----------Kenny Trionfo---5/4/2015--------
	# Yaml is a string version of any ruby object
	# Study YAML stuff  
	# http://learnxinyminutes.com/docs/yaml/

#------------STDOUT: Standard Output Definition?----------Kenny Trionfo---5/5/2015--------

#------------Relative vs Absolute links----------Kenny Trionfo---5/5/2015--------
	# relative & absolute links:  
	#  http://www.coffeecup.com/help/articles/absolute-vs-relative-pathslinks/

#------------defined?----------Kenny Trionfo---4/30/2015--------
	# def defined_test(some_string)
	# 	if defined?(some_string) # returns "expression" string, and thus true
	# 	  puts some_string # the error comes from this part, since aaa is not defined.
	# 	else
	# 		puts "some_string argument is not defined"
	# 	end
	# end
	# defined_test("I'm defined ok!")

#------------ ||= Double Pipe Equal Operator ----------Kenny Trionfo---6/2/2015--------
	# Stands for "If the first thing is undefined, false or nil, return the second thing"
	# So "return what's on the left side of the pipes, unless it's nil, then return what's on the right side." 
	# Use: this when you want to have an alternative to something being nil. ie - you don't want a variable that ur setting to be accidentally set to nil so in case it is set to nil, ||= will set it to the alternative option. 
	# Exercise: Create a method to puts the name of a drink that you pass in for the drink makers at Ken's smoothies to make. Try it by passing in a var that you set to a string and then to nil and should get an alert if you pass in a var that is nil. 
	# Answer: 

	# def order(drink_name)
	# 	puts drink_name ||= "ALERT! Drink name can't be blank."
	# end
	# order_name_var = nil
	# order order_name_var

	# irb exammple: 
	# a ||= b
	# So in irb, if we did:
	# a = nil
	# b = 20
	# a ||= b 
	# So because a is nil, a ||= b should return 20. 

	# http://www.rubyinside.com/what-rubys-double-pipe-or-equals-really-does-5488.html

#------------each_with_index----------Kenny Trionfo---5/19/2015--------
	# Calls block with two arguments, the item and its index, for each item in enum. Given arguments are passed through to each(). If no block is given, an enumerator is returned instead.
	# Basically whatever group of objects you call this on, it will assign an index to them in a hash. 
	# Or ur just taking each item in an array object and putting them into a hash and assigning their array index value as the has key/value value. 
	# Use this when you want to take items from an array and put them into a hash and assign each of their hash values whatever their index value was. 
	# Create a method that creates a new empty hash 
	# -Call .each_with_index on an actual array object (not a variable) and pass in a block that iterates through an item and an index, and for each item in the array assigns it an index. 
	# Answer: 

	# def each_with_index
	# hash = {}
	# [3, "fun", 12].each_with_index do |item,index| 
	# 	hash[item] = index 
	# end
	# p hash 
	# end
	# each_with_index

#------------%w----------Kenny Trionfo---5/19/2015--------
	# Turns whatever you pass into it into an array of objects. 
	# Nice to use when you want to create an array that has a lot of strings in it and you don't wnat to type all of the quotes. Just pass raw objects into this. 
	# In Irb Pass some raw string objects (without quotes) into this and assign it to a variable. 	
	# Answer: 

	# 2.1.1 :001 > %w(cat dog pig)
	#  => ["cat", "dog", "pig"]

#------------.all?----------Kenny Trionfo---5/5/2015--------
	# Passes each element of the collection to the given block. The method returns true if the block never returns false or nil. 
	# Write a method that uses .all to iterate through an array of words to check if ALL of the items are at least a certain length or not. 
	# Write a method for a ride attendant that show him if each of the kids in a party are old enough for a ride or not. 
	# Answer: 
	
	# def attendant_list list_of_kids_ages
	# 	if list_of_kids_ages.all? {|kid, age| age > 3 }
	# 		puts "All good"
	# 	else
	# 		puts "Not all are over 3"
	# 	end
	# end
	# kids_ages = {bily: 5, suzy: 6, seth: 4}	
	# attendant_list kids_ages

	# Another example:
	# def all_test
	# 	a = ["one", "two", "boyzz", "girl"] 
	# 	 if a.all? {|x| x.length <= 4}
	# 	 	puts "a is all 4s or less"
	# 	 else
	# 	 	puts "not all in a are 4 or less"
	# 	 end	
	# end
	# all_test

	# http://ruby-doc.org/core-2.1.3/Enumerable.html

#------------ Navigting arrays and hashes using .select & .first ----------Kenny Trionfo---2/13/2015--------
	# Use .select to find and puts the value of all of the hashes in the array below that have a key of :age. 
	# Now find all of the hashes in the array where the key is :age and the value is 442. 
	# Now find the first hash that has a key of :age and a value of 442. 
	# Now return the value of the :color key of the first hash that has a key of :age and a value of 442.kentrionfo@gmail.com
	# a = [{:first_name=>"Bily", :age=>342, :color=>"Pinkish"}, {:last_name=>"sily", :age=>442, :color=>"grennkish"}, {:no_name=>"nothing", :age=>442, :size=>"tiny"}]
 
	# In awesome print
	# [
	#     [0] {
	#         :first_name => "Bily",
	#                :age => 342,
	#              :color => "Pinkish"  
	#     },
	#     [1] {
	#         :last_name => "sily",
	#               :age => 442,
	#             :color => "grennkish"
	#     },
	#     [2] {
	#         :no_name => "nothing",
	#             :age => 442,
	#            :size => "tiny"
	#     }
	# ]

	#Answer: 

	# puts a.select{|x| x[:age]}
	# puts a.select{|x| x[:age]==442}
	# puts a.select{|x| x[:age]==442}.first
	# puts a.select{|x| x[:age]==442}.first[:color]

#------------ RVM stuff ----------Kenny Trionfo---1/19/2015--------
	# hotkeys: 
	# rvm info = to display all rvm info
	# $ rvm gemdir to see the gem directory
	# Ref: https://rvm.io/ 
	#ref: http://watirmelon.com/2011/01/17/easily-manage-your-rubies-with-rvm-bundler-and-pik/

 



# ############################################
# ############################################
# ######### Right here Right now #############
# #########                      #############
# ############################################
# ############################################




#------------single splats, parameters, arguments ----------Kenny Trionfo---3/5/2015--------
	#DEFINE: A single splat '*' param will allow you to pass in multiple params, a list and turns it into an array. 
	#USE BY: You want to pass in a list of things after a splat that will be turned into and used as an array.
	#EXAMPLE: You want to pass in a list of ingredients that become an array that can be used to iterate through to see if there is a particular ingredient that someone could be alergic to. 
	#Exercise: Create and call a method that allows you to pass in a list of items that you can iterate through and puts a message that "it's ok" if you don't find the alergic ingredient, and puts "no good" if the ingredient is found in the array. 
    #Answer: 

	# def order_mapping *list_of_ingredients 
	#   puts "what you passed in should be an array now. Let's see. Here is the list_of_ingredients:"
	#   puts list_of_ingredients[0]
	# 	if list_of_ingredients.include? 'poison'
	# 		puts "No good, there's poison in these ingredients"
	# 	else
	# 		puts "All clear dude."
	# 	end 
	# end
	# order_mapping "butter", "flour", "sugar"

	# Here we try passing in an array and it gets turned into a list when we need to use it in our method. 
    # def reverse_splat *array
    # 	puts "Here's the array as a list:"
    # 	puts array 		
    # end	
    # reverse_splat ["one", 2, 3]

    #Another example:
	# Create a method that has a parameter with a double splat and try running the method and passing in a key value pair and they run it passing in multiple params. 

	# Answer 

	# def dog_sound *multiple_items_or_a_hash #Single spat will let you pass in either a key value pair or multiple params. The k/v pair will be output as a hash.
	# 	puts multiple_items_or_a_hash[0]
	# end
	# dog_sound tail_wagging: "yes" #A hash works:
	# dog_sound "ruff ruff", "bark", "growl", "meow" #And this works too.

	# Splats resource:
	# https://dev.firmafon.dk/blog/splat-goes-ruby/


#------------Double splats----------Kenny Trionfo---6/23/2015--------
	#DEFINE: ** allows you to pass in k/v objects for k/v arguments that can be returned/used as a Hash like (name: "bety", age: 60) not the actual hash. 
	#USE BY: putting **before a parameter like **keyvalue_pairs
	#EXAMPLE: In addition to passing in the title of a movie, you want to allow someone to pass in the time and dates as k/v's as well. 

	#Answer: 

	# def movie_info title, **time_and_date
	# 	puts "The movie title is: #{title}"
	# 	puts "The time and date are:"
	# 	puts time_and_date
	# end
	# movie_info "Kenny's new world", Time: "12:30pm", Date: "6/30/2015"

	# Another example: 
	# def foo(a, *b, **c)
	#  puts [a, b, c]
	#  puts "next"
	# end
	# foo 10
	# => [10, [], {}]
	# foo 10, 20, 30
	# => [10, [20, 30], {}]
	# foo 10, 20, 30, d: 40, e: 50
	# => [10, [20, 30], {:d=>40, :e=>50}]
	# foo 10, d: 40, e: 50
	# => [10, [], {:d=>40, :e=>50}]

	#But if you use the double spat:
	# def dog_sound(bark = "ruff", **attrs)
	# 	puts bark, attrs 
	# end
	# # You can only pass in k/v pairs, not multiple params so this should work: 
	# dog_sound(bark = "ruff ruff", tail_wagging: "yes") #But this shouldn't: 
	# dog_sound(bark = "ruff ruff", "meow", "hi", "bark") #You'll get wrong number of arguments. 

	# dog_sound #This works cuz the parameter bark = "ruff" is the default and will be passed in if nothing else is passed in. 

	# dog_sound(bark: "ruff ruff") #doesn't work because it needs to be in the argument needs to be in the same format as the parameter like: bark = "ruff ruff".
	
	# dog_sound(bark = "ruff ruff") #This will work cuz it matches the syntax of the param: 

	# dog_sound(bark = "ruff ruff", "yes")
	 
	#This also works: 
	# dog_sound("ruff ruff", tail_wagging: "yes")

#---------------- blocks -------------Kenny Trionfo---12/1/2014--------
# blocks aren't _________. And they don't have all the powers and abilities of an _________ and so therefor can't be saved as a ____________.
# 	Answer:

# ojects. object. variables.


#---------------- yield -------------Kenny Trionfo---12/1/2014--------
# 1-write a method that puts something yields to a block outside of it and then puts something else. 
# 	Answer: 

# def block_test
#   puts "We're in the method!"
#   puts "Yielding to the block..."
#   yield
#   puts "We're back in the method!"
# end

# block_test { puts ">>> We're in the block!" }

# 2-now say that you want to execute a block of code that is outside of a method that you want to run. Use yield that takes a param inside of a method. 
# 	Answer: 

# def yield_with_param(word)
# 	puts "before yield"
# 	yield(word)
# 	puts "after yield"
# end
# yield_with_param("shalasium") { |x| puts "#{x} is my word."}


#---------------- LAMBDAS -------------Kenny Trionfo---12/1/2014--------
# What is the difference between a proc and a lambda?
# 	Answer: 

# a lambda checks the number of arguments passed to it, while a proc does not. This means that a lambda will throw an error if you pass it the wrong number of arguments, whereas a proc will ignore unexpected arguments and assign nil to any that are missing.

# Second, when a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method.


#---------------- Lambda proc puts -------------Kenny Trionfo---12/1/2014--------
#   why do we have to use "puts" here to call these methods and not just call them with their name? ?
# def batman_ironman_proc
#   victor = Proc.new { return "Batman will win!" }
#   victor.call
#   "Iron Man will win!"
# end

# puts batman_ironman_proc


# def batman_ironman_lambda
#   victor = lambda { return "Batman will win!" }
#   victor.call
#   "Iron Man will win!"
# end

# puts batman_ironman_lambda


#---------------- .collect & lambda -------------Kenny Trionfo---12/1/2014--------
# 1.create a hash of strings.
# 2.capitalize each of them by using .collect and an do/end block that capitalizes each one. 
# 3.Now do above but using .collect and pass it the collect lambda. 
# 	Answer: 

# >> ['a', 'b', 'c'].collect{|letter| letter.capitalize}
# => ["A", "B", "C"]
# But it looks so much nicer this way:

# >> ['a', 'b', 'c'].collect(&:capitalize)
# => ["A", "B", "C"]


#---------------- RANGE -------------Kenny Trionfo---11/26/2014--------
#Convert the alphabet range into an array and print each one. 
#Answer:

# ('A'..'Z').to_a.each { |letter| print letter }


#----------------RICE ON SQUARES -------------Kenny Trionfo---11/26/2014--------
#Create a method that starts by putting one grain of rice on a checkerboard square and then doubles it up to 64.
# Answer: 

# rice_on_square = 1
# 64.times do |square|
#  puts "On square #{square + 1} are #{rice_on_square} grain(s)"
#  rice_on_square *= 2
# end


#----------------  -------------Kenny Trionfo---11/24/2014--------
	#.5-Create an array of strings called strintgs that we'd like to later use as hash keys, but we'd rather they be symbols.
	# 1-Create a new variable, symbols, and store an empty array in it.
	# 2-Use .each to iterate over the strings array.
	# 3-For each s in strings, use .to_sym to convert s to a symbol and use .push to add that new symbol to the symbols array.
	# 4-Puts symbols
	# Answer:

	# strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
	# symbols = []

	# strings.each do |s| 
	#     symbols.push(s.to_sym) 
	# end
	# puts symbols

	# #---------------- .select -------------Kenny Trionfo---11/24/2014--------
	#1-Create a new variable, good_movies, 
	#2- set it equal to the result of calling .select on the movie_ratings hash below, selecting only movies with a rating strictly greater than 3.
	#3- Puts it to test it. 
	# movie_ratings = {
	#   memento: 3,
	#   primer: 3.5,
	#   the_matrix: 5,
	#   truman_show: 4,
	#   red_dawn: 1.5,
	#   skyfall: 4,
	#   alex_cross: 2,
	#   uhf: 1,
	#   lion_king: 3.5
	# }

	# Answer:

	# good_movies = movie_ratings.select { |k,v| v > 3.0 }
	# print good_movies


# #---------------- .each_key & .each_value -------------Kenny Trionfo---11/24/2014--------
	# Use .each_key or .each_value to Go ahead and print out just the titles of the movies hash above using puts.
	# Answer:

	# movie_ratings.each_key { |k| puts k }


#---------------- HASH WITH A DEFAULT VALUE -------------Kenny Trionfo---11/21/2014--------
	#irb - Used when u try to pass a key that doesn't exist into a hash. or when you don't have anythign in a hash and you need to say that??
	#1-Create a hash using the constructor method and put a default key in it that will get returned if u try to access a key in the hash that doesn't exist. 
	# Now try to pass something that doesn't exist into the hash & u should get your default back.
	#Answer: 

	# mh = Hash.new("The key ur trying to access isn't in here")
	# mh[:friend]


#---------------- IF TRUE THEN with =? -------------Kenny Trionfo---11/21/2014--------
	# .where("#{"api_name=?" if api_name}",api_name)  
	# Means 


#---------------- passing multiple arguments -------------Kenny Trionfo---11/21/2014--------
	# def what_up(greeting, *bros)
	#   bros.each { |bro| puts "#{greeting} #{bro}" }
	# end
	#  what_up("What up", "Justin", "Ben", "Kevin Sorbo")

#----------------print / list all items in a list  -------------Kenny Trionfo---11/19/2014--------
	# def puts_1_to_10
	# 	  (1..10).each { |i| puts i }
	# end

#---------------- Manipulate tesxt split frequency -------------Kenny Trionfo---11/18/2014--------
	# puts "Text please: "
	# text = gets.chomp

	# words = text.split(" ")
	# frequencies = Hash.new(0)
	# words.each { |word| frequencies[word] += 1 }
	# frequencies = frequencies.sort_by {|a, b| b }
	# frequencies.reverse!
	# frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

#---------------- BEGIN RESCUE -------------Kenny Trionfo---11/13/2014--------
	# puts "Please type in an even number"
	# num = gets.chomp.to_i
	# begin
	# 	if num % 2 == 0
	# 		puts "Great, #{num} is a great even number. Thank you."
	# 	else
	# 		throw "I'm sorry, that's not an even number." # a way to artificially kick to rescue block 
	# 	end
	# rescue Exception => e  #kind of like defining a param
	# 	puts e.message 
	# end


#---------------- SUPER TO OVERLOAD METHODS -------------Kenny Trionfo---11/21/2014--------
	# 1. Create a Class with a method in it that puts something. 
	# 2. Create a 2nd Class that inherits from the first with a method in it that has the same name as the method in the first class and both prints something different than the previous method and calls super. 
	# 3. Create a 3rd Class that inherits from the 2nd one with no method in it. 
	# 4. Create an instance of the 3rd Class. 
	# 5. Call the method from the 2nd Class on it. 
	# Answer:

	# class Laptop  
	# 	def create_first_user    
	# 		puts "Enter your username."    
	# 		puts "Enter your password."  
	# 	end
	# end
	# class AppleComputers < Laptop  
	# 	def create_first_user    
	# 		puts "Take a photo of yourself."    
	# 		super  
	# 	end
	# end
	# class MacBookPro < AppleComputers
	# end

	# @my_new_macbook_pro = MacBookPro.new
	# @my_new_macbook_pro.create_first_user
	# # => Take a photo of yourself.
	# # => Enter your username.# => Enter your password.


#---------------- TERNARY OPERATOR -------------Kenny Trionfo---11/14/2014--------
	# age = 10
	# puts "You are a " + (age < 18 ? "child" : "adult")

	
#---------------- RAISE EXCEPTION -------------------
	# def raise_exception  
	# 	puts "I am before the raise"
	# 	raise "This is ur message that an error has occurred"
	# 	puts "I am after the raise"
	# end
	# raise_exception 


# --------------------quick little method to show the components of a URL------------
	# test urls to play withtest 
	# http://api.popshops.com/v3/deals.json?account=etl4xy4bqez70idzyypjwyfxn&catalog=dxeqyv83t3vcox7iztg9ufg16
	# http://www.ruby-doc.org/stdlib-1.9.3/libdoc/uri/rdoc/URI.html#method-c-parse

	# require 'net/http' # this automatically does a  require 'uri' 
	# def uri_tester 
	# 	puts "Enter a full web address including the http:// part:"
	# 	address = gets.chomp
	# 	uri = URI(address)
	# 	puts "Here are the URL component details:"
	# 	puts "uri scheme(protocol) ie-http, https, ftp, file : #{uri.scheme}"
	# 	puts "uri userinfo: #{uri.userinfo}" # something wrong with Userinfo. "undefined method"
	# 	puts "uri host(domain name): #{uri.host}"
	# 	puts "uri port: #{uri.port}"
	# 	puts "uri registry: #{uri.registry}"
	# 	puts "uri path: #{uri.path}"
	# 	puts "uri opaque: #{uri.opaque}"
	# 	puts "uri query: #{uri.query}"
	# 	puts "uri fragment: #{uri.fragment}"
	# 	puts URI.split(address)
	# end
	# uri_tester

#------------- Super -------------------
	# Create a Class with a method in it that puts something. 
	# Create a 2nd Class that inherits from the first with a method in it that has the same name as the method in the first class and both prints something different than the previous method and calls super. 
	# Create a 3rd Class that inherits from the 2nd one with no method in it. 
	# Create an instance of the 3rd Class 
	# Call the method from the 2nd Class on it. 

	# class Laptop
	#   def create_first_user
	#     puts "Enter your username."
	#     puts "Enter your password."
	#   end
	# end

	# class AppleComputers < Laptop
	#   def create_first_user
	#     puts "Take a photo of yourself."
	#     super
	#   end
	# end

	# class MacBookPro < AppleComputers
	# end

	# @my_new_macbook_pro = MacBookPro.new
	# @my_new_macbook_pro.create_first_user

	# => Take a photo of yourself.
	# => Enter your username.
	# => Enter your password.


#-----------Loops -------------------
	# While loop
	# counter = 1
	# while counter < 11
	#   puts counter
	#   counter = counter + 1
	# end
	 
	# For Loop
	# use for loops when you know how many times you'll be looping. 
	# iterate with a loop
	# i = 0
	# loop do 
	# 	i += 2
	# 	print "#{i} "
	# 	break if i == 24
	# end

#---------------- hashes -------------------
	# - if you pass in a key with no value, it'll let you but will be nil. 
	# - call the value of a key/value pair of a hash by: 
	# my_path[:ack] = 12  #adds key ack w/ value 12 to hash my_path
	#  => 12
	# 2.1.1 :005 > my_path
	#  => {:ack=>12}
	#calls ack's value from the hash (but only if the format the hash was saved in was )
	# my_path[:ack]  
	#  => 12 

#---------------- 2 ways to do hash syntax -------------------
	#create:
	# hash = {"name" => "David", "age" => 49 }
	# hash = { name: "David", age: 49 }
	# #call a value:
	# hash[:name]
	# #create the new k/v pair too I think)
	# hash[:eye_color] = "Brown"


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

#------------ bundle and all it's glory ----------Kenny Trionfo---1/15/2015--------
	# bundle exec rake -T  = will give you a list of available rake tasks.
	# bundle help  for help on commands. 

#------------ Rake commands, shortcuts etc ----------Kenny Trionfo---1/15/2015--------
	# rake -D = to list a bunch of stuff about rake. 
	# rake -T   to get all rake commands
	# rake -T test: 
	# rake about  to examine your rails installation

#------------ terminal, console, shell, command line, bash stuff----------Kenny Trionfo---1/14/2015--------
	# sudo -s to get into root # I understand how this: / shows your root and this: cd / takes you to ur root but not what sudo -s does??
	# man bash for a bash manual
	# sqlite3 db/development.sqlite3  or sqlite3   from inside the app you want to see the db of to see what version ur using and to enter the sqlite db? get you inside the db? 	

	# ls -p to mark directories with a / 
	# $ ls /bin  - ls just lists what's in bin and bin is just a standard subdirectory of the root directory in Unix-like operating systems that contains the executable (i.e., ready to run) programs that must be available in order to attain minimal functionality for the purposes of booting (i.e., starting) and repairing a system.

	# Explain what the following command prints to the shell: 
	# $ echo $HOME
	# Anwer: 

	# $HOME is an environment variable that is assigned to the absolute pathname of the home directory. Previously, we've used ~ to navigate to the $HOME directory, but both ~ and $HOME reference the absolute pathname of the home directory. cd $HOME/Desktop and cd ~/Desktop can both be used to navigate to the Desktop directory.

	# Explain what the following command prints to the shell. What is the significance of this output?
	# $ echo $PATH
	# Answer:

	# The $PATH environment variable stores a list of directories, separated by colons. When a shell program is run, the shell looks for the program in these directories. All the programs we've been using thus far (cd, cat, touch, ls, grep) are all defined in one of the directories listed in the $PATH environment variable. 
	# Environment variables are global variables that live in your shell session, and help your shell fill in shortcuts or specify preferences.

	# In this command:
	# $ cd ~
	# what is the '~'? 
	# Answer: 
	# A variable for HOME (same as $HOME?)

	# In this command: 
	# $ cd /
	# what is the '/'?
	# Answer: 

	# The path. (not right.?.?  should this be root? ask sensei)
 
	# What file is ls program file defined in? 
	# Answer: 

	# which ls
	# The which command returns the location of executable files. On my machine, the ls file is located in /bin/ls. /bin/ is the directory and ls is the executable file.

	# The command $ ls -l provides a long listing of the files in a directory. Alias longls so it can be used in place of $ ls -l
	# Answer: 
	# alias longls='ls -l'
	# # now the following command line works
	# longls # same as ls -l

	# Is $HOME/Desktop/ an absolute or relative path? Explain.
	# Answer: 
	# $HOME/Desktop/ is an absolute path because it is specified relative to the root directory.

	# Is /bin/ an absolute or relative path? Explain.
	# Answer: 
	# /bin/ is an absolute path because it's specified relative to the / (root) directory.

	# What's the difference between absolute and relative paths?
	# Answer: 
	# Absolute paths are specified relative to the root directory. Relative paths are specified relative to the current working directory.

	#more: 
	#http://www.codequizzes.com/learn-bash/redirection-grep-pipelines

#------------ environmental variables ----------Kenny Trionfo---1/13/2015--------
	#Answer: 
	# http://en.wikipedia.org/wiki/Environment_variable

#------------ vi ----------Kenny Trionfo---1/13/2015--------
	# not going to use right now. too much time to learn for low amount of time using it. 
	# 1-Open a file with it. 
	# 2-add to the file? 
	# 3-close the file? 

#------------ echo cat touch ----------Kenny Trionfo---1/13/2015--------
	# 1-cd to home drive in one command
	# 2-cd to gemsets in .rvm
	# 3-show the results in the gemset file
	# 4-get back to the home drive
	# 5-show the results of the file above without cd ing to it. 
	# 6-create a new file on some safe directory and put something into it, replace it, add to it and show it. 
	# 7-delete the temp file. 
	# Answer: 

	# vagrant@ic-dev-box:~$ cat ~/.rvm/gemsets/global.gems
	# gem-wrappers
	# rubygems-bundler
	# bundler
	# rake
	# rvm
	# vagrant@ic-dev-box:~$ touch delete_me
	# vagrant@ic-dev-box:~$ echo "hi kenny" > delete_me
	# vagrant@ic-dev-box:~$ cat delete_me
	# hi kenny
	# vagrant@ic-dev-box:~$ cd ~/.rvm/gemsets/
	# vagrant@ic-dev-box:~/.rvm/gemsets$ cat global.gems
	# gem-wrappers
	# rubygems-bundler
	# bundler
	# rake
	# rvm
	# vagrant@ic-dev-box:~/.rvm/gemsets$ man cat  # for the manual for cat
	# vagrant@ic-dev-box:~/.rvm/gemsets$ cd ~
	# vagrant@ic-dev-box:~$ ls
	# delete_me  projects  spring_tmp  team_city
	# vagrant@ic-dev-box:~$ touch d2
	# vagrant@ic-dev-box:~$ echo "this is Nathan" > d2
	# vagrant@ic-dev-box:~$ cat d2
	# this is Nathan
	# vagrant@ic-dev-box:~$ cat delete_me d2
	# hi kenny
	# this is Nathan
	# vagrant@ic-dev-box:~$ cat delete_me
	# hi kenny
	# vagrant@ic-dev-box:~$ cat d2
	# this is Nathan
	# vagrant@ic-dev-box:~$ echo "this is hedgehog" > d2
	# vagrant@ic-dev-box:~$ cat d2
	# this is hedgehog
	# vagrant@ic-dev-box:~$ echo "this is hedgehog" >> d2
	# vagrant@ic-dev-box:~$ cat d2
	# this is hedgehog
	# this is hedgehog
	# vagrant@ic-dev-box:~$ nano d2
	# vagrant@ic-dev-box:~$ cat d2
	# this is hedgehog
	# this is hedgehog
	# testing
	# vagrant@ic-dev-box:~$ vi d2
	# vagrant@ic-dev-box:~$ vi ~/.rvm/gemsets/global.gems
	# vagrant@ic-dev-box:~$ cat ~/.rvm/gemsets/global.gems
	# gem-wrappers
	# rubygems-bundler
	# bundler
	# rake
	# rvm
	# awesome print
	# vagrant@ic-dev-box:~$
 
#------------  Controller methods ----------Kenny Trionfo---1/8/2015--------
	# Controllers make decisions in our application through methods. 
	# In Rails, there are eight methods that let us Create, Read, Update, and Delete information in our application. These methods are commonly known as CRUD.

#------------ DB Schema ----------Kenny Trionfo---1/8/2015--------
	# The schema file represents the current XXXXX of the database. The migrations explain XXXXX XXXXX XXXXX XXXXX XXXXX from somewhere else. 
	# A schema is a collection of database XXXXX (tables) associated with one particular database username. This username is called the schema owner, or the owner of the related group of objects. You may have one or multiple schemas in a database. Basically, any user who creates an object has just created his or her own schema. So, based on a user's privileges within the database, the user has control over objects that are created, manipulated, and deleted. 
	# Answer: 

	# The schema file represents the current state of the database. The migrations explain how to reach that state from somewhere else. 
	# A schema is a collection of database objects (tables) associated with one particular database username. This username is called the schema owner, or the owner of the related group of objects. You may have one or multiple schemas in a database. Basically, any user who creates an object has just created his or her own schema. So, based on a user's privileges within the database, the user has control over objects that are created, manipulated, and deleted. 

	# http://technotes.iangreenleaf.com/posts/2013-09-10-rails-migrations-and-schema.html

#------------ Migrations ----------Kenny Trionfo---1/8/2015--------
	# Migrations are a convenient way to alter your XXXX XXXXX over time.
	# Answer: 

	# Migrations are a convenient way to alter your database schema over time.

	# exp:
	# Migrations can manage the evolution of a schema used by several physical databases. It's a solution to the common problem of adding a field to make a new feature work in your local database, but being unsure of how to push that change to other developers and to the production server. With migrations, you can describe the transformations in self-contained classes that can be checked into version control systems and executed against another database that might be one, two, or five versions behind.

#------------ Add memory to Vagrant box ----------Kenny Trionfo---1/5/2015--------
	# open the vagrant file found here c/virtualmachine/icdevbox in submlime and change the vb.memory in this block:
	#   config.vm.provider :virtualbox do |vb|
	#   	vb.gui = false
	#     vb.memory = 2048
	#   end

#------------ about echo ----------Kenny Trionfo---1/2/2015--------
	#answer: 
	# http://www.linfo.org/echo.html

#------------ man & -h ----------Kenny Trionfo---12/31/2014--------
	# man = manual 
	# ie:
	# man rm = manual for rm command line syntax
	# man ls = manual for ls
	# -h = help (may only be for rails), ie: 
	# rails -h 

#------------Passing various kinds of parameters to methods----------Kenny Trionfo---2/18/2015--------
	# Create a method that takes one generic parameter, call it, and just puts it.
	# Create a method that takes a generice parameter and one defalut param, call it and try passing in different arguments. 
	#Answer: 

	# def cat_sound(meow)
	# 	puts meow
	# end
	# cat_sound("roar")

	# def dog_sound(bark, sound: "rough rough")
	# 	puts bark + sound
	# end
	# dog_sound("loud", sound: "tweet tweet")
		
	# def person_sound(yell = "Yo dude!")
	# 	puts yell
	# end
	# person_sound(yell="hey there big boy")

#------------Recursive Openstruct----------Kenny Trionfo---5/5/2015--------
	# RecursiveOpenStruct 
	#  let's you access a k/v pair in a hash that doesn't normally take a method with a method. 
	# It is a subclass that returns nested hash attributes as RecursiveOpenStructs.
	# It allows for hashes within hashes to be called in a chain of methods:


	# Require the RecursiveOpenStruct gem 
	# Create a method that creates a variable that passes a hash with a hash in it into a new RecursiveOpenStruct object/var and then puts one of the items in the nested hash by method chaining the hashes onto the object/var.
	# Call the method.
	# Answer: 

		# require 'recursive-open-struct'
		# def ros
		# 	var = RecursiveOpenStruct.new( { :names => {first_name: "Bily", age: 342, color: "Pinkish"} } )
		# 	puts var.names.age
		# end
		# ros

#------------Ruby is a dynamic language----------Kenny Trionfo---5/5/2015--------
	# Ruby is dynamic language w/ no compiler. (but a interpreter)
	#  as Ruby is a dynamic language, unit testing is even more important. In static languages the compiler will find many errors. With dynamically typed languages such as Ruby there is no compiler around to check the code

#------------ rm -rfv ./RubyMine* ----------Kenny Trionfo---12/31/2014--------
	# rm = remove 
	# -rfv = recursive force verbose 
	# ./ = in this file
	# RubyMine* = All files with filename that begins with RubyMine

#------------ .tar files ----------Kenny Trionfo---12/31/2014--------
	#Anwer:
	# Source code is often packed for download as a TAR (Tape ARchive) file, that is a standard format in the unix/Linux world. These files have a .tar extension; they can also be compressed, the extension is .tar.gz or .tar.bz2

#----X------------ Create a Module as Namespace -------------Kenny Trionfo---12/16/2014--------
	# 1 Create a class Ruler that has a method in it that creates a new 12 inch ruler. 
	# 2 Create a module called PeopleRuler that has a same-named class Ruler in it with a method that's also the same name as the method of the previous class but that puts something about a ruler over the people. 
	# 3 Create a new instance of each of the classes and call each of the methods from the classes. be sure to namespace the one. 
	# 4 create a new object and call each method from the two classes on them. 


	# Answer: 
	# class Ruler
	# 	def initialize
	#   end

	# 	def new_ruler
	# 		puts "I'm a new 12 inch ruler"
	# 	end
	# end

	# module PeopleRuler
	# 	class Ruler		
	# 		def new_ruler
	# 			puts "I'm your new boss. Ruler K-dog"
	# 		end
	# 	end
	# end
	# wood = Ruler.new()
	# wood.new_ruler
	# boss = PeopleRuler::Ruler.new  
	# boss.new_ruler

#---------------- =~ operator "has any of" -------------Kenny Trionfo---12/12/2014--------
	# What does the =~ operator do? 
	# Answer: 
	# The =~ operator returns the position of the first match, if any, declaring that its true. 
	# =~: Matches a supplied regular expression against the string. The position of the first match is returned, otherwise nil. This technique is commonly used as a comparison expression to see if a string matches a regular expression.
	# Write a one line "do this if that" expression that checks some string to see if it has any vowels.

	# Answer: 
	# puts "This string has vowels" if "This is a test" =~ /[aeiou]/

#---------------- Constructor -------------Kenny Trionfo---12/12/2014--------
	# The Constructor in Ruby Is the xxxxx method. 
	# - It is automatically called when an object is xxxxx. 
	# - Constructors do not return xxxxx. 
	# - The purpose of the constructor is to xxxxx the state of an object. 
	# - Constructors cannot be inherited. 
	# - The constructor of a parent object is called with a xxxxx method. 
	# - They are called in the order of xxxxx.
	# Answer: 

	# The constructor the initialize method. 
	# - It is automatically called when an object is created. 
	# - Constructors do not return values. 
	# - The purpose of the constructor is to initiate the state of an object. 
	# - Constructors cannot be inherited. 
	# - The constructor of a parent object is called with a super method. 
	# - They are called in the order of inheritance.
	# Ref:  http://zetcode.com/lang/rubytutorial/oop/    and  
	# http://www.slideshare.net/ciscoleal/constructors-28459017

#---------------- Action Controller -------------Kenny Trionfo---12/12/2014--------
	# Action Controllers are the core of a XXXX XXXX in \Rails. They are made up of one or more XXXX that are executed on request and then either it renders a template or redirects to another action. An action is defined as a public XXXX
	# on the controller, which will automatically be made accessible to the XXXX through \Rails Routes.
	# By default, only the ApplicationController in a \Rails application inherits from <tt>XXXX</tt>. All other
	# controllers in turn inherit from ApplicationController. This gives you one class to configure things such as request forgery protection and filtering of sensitive request parameters.
	# A sample controller could look like this:
	#   class PostsController < ApplicationController
	#     def index
	#       @posts = Post.all
	#     end
	#
	#     def create
	#       @post = Post.create params[:post]
	#       redirect_to posts_path
	#     end
	#   end
	#
	# XXXX, by default, render a template in the <tt>app/views</tt> directory corresponding to the name of the controller and action after executing code in the action. For example, the +index+ action of the PostsController would render the
	# template <tt>app/views/posts/index.html.erb</tt> by default after populating the <tt>@posts</tt> instance variable.
	# Unlike index, the XXXX action will not render a template. After performing its main purpose (creating a new post), it initiates a XXXX instead. This redirect works by returning an external
	# "302 Moved" HTTP response that takes the user to the XXXX action.
	# These two methods represent the two basic action archetypes used in Action Controllers. XXX-and-XXX and XXX-and-XXX.
	# Most actions are variations on these themes.
	# 	Answer: 
	# Action Controllers are the core of a web request in \Rails. They are made up of one or more actions that are executed
	# on request and then either it renders a template or redirects to another action. An action is defined as a public method
	# on the controller, which will automatically be made accessible to the web-server through \Rails Routes.
	#
	# By default, only the ApplicationController in a \Rails application inherits from <tt>ActionController::Base</tt>. All other
	# controllers in turn inherit from ApplicationController. This gives you one class to configure things such as
	# request forgery protection and filtering of sensitive request parameters.
	#
	# A sample controller could look like this:
	#
	#   class PostsController < ApplicationController
	#     def index
	#       @posts = Post.all
	#     end
	#
	#     def create
	#       @post = Post.create params[:post]
	#       redirect_to posts_path
	#     end
	#   end
	#
	# Actions, by default, render a template in the <tt>app/views</tt> directory corresponding to the name of the controller and action
	# after executing code in the action. For example, the +index+ action of the PostsController would render the
	# template <tt>app/views/posts/index.html.erb</tt> by default after populating the <tt>@posts</tt> instance variable.
	#
	# Unlike index, the create action will not render a template. After performing its main purpose (creating a
	# new post), it initiates a redirect instead. This redirect works by returning an external
	# "302 Moved" HTTP response that takes the user to the index action.
	#
	# These two methods represent the two basic action archetypes used in Action Controllers. Get-and-show and do-and-redirect.
	# Most actions are variations on these themes.

#-------Requests in Action Controller -------------Kenny Trionfo---12/24/2014--------
	# REview this one with sensei.
	# For every XXXX, the XXXX determines the XXXX of the +XXXX+ and +XXXX+ keys. These determine which controller and action are called. The remaining request parameters, the XXXX (if one is available), and the full XXXX with all the HTTP headers are made available to the XXXX through XXXX methods. Then the action is performed.
	# The full request object is available via the XXXX accessor and is primarily used to query for HTTP headers. Look at the following example: 
	# Write an example method here: 
	#Answer: 

	# For every request, the router determines the value of the +controller+ and +action+ keys. These determine which controller and action are called. The remaining request parameters, the session (if one is available), and the full request with all the HTTP headers are made available to the action through accessor methods. Then the action is performed.
	# The full request object is available via the request accessor and is primarily used to query for HTTP headers. Look at the following example: 
	# Write an example method here: 
	#Answer: 
	#   def server_ip
	#     location = request.env["SERVER_ADDR"]
	#     render plain: "This server hosted at #{location}"
	#   end

#------------ Add Port Forworded ----------Kenny Trionfo---1/5/2015--------
	# open the vagrant file found here c/virtualmachine/icdevbox in submlime and add to this block:
	# config.vm.network :forwarded_port, guest: 3000, host: 3000
	# config.vm.network :forwarded_port, guest: 8111, host: 8111
	# config.vm.network :forwarded_port, guest: 9090, host: 9090  

#-------Parameter in Action Controller-------------Kenny Trionfo---12/24/2014--------
	# All request parameters, whether they come from a XXX or XXX request, or from the XXX, are available through the XXX method which returns a hash. For example, an action that was performed through <tt>/posts?category=All&limit=5</tt> will include <tt>{ "category" => "All", "limit" => "5" }</tt> in params.
	# It's also possible to construct multi-dimensional parameter hashes by specifying keys using brackets, such as:
	#   <input type="text" name="post[name]" value="david">
	#   <input type="text" name="post[address]" value="hyacintvej">
	# A request stemming from a form holding these inputs will include <tt>{ "post" => { "name" => "david", "address" => "hyacintvej" } }</tt>.
	# If the address input had been named <tt>post[address][street]</tt>, the params would have included
	# <tt>{ "post" => { "address" => { "street" => "hyacintvej" } } }</tt>. There's no limit to the depth of the nesting.
	#Answers:

	# All request parameters, whether they come from a GET or POST request, or from the URL, are available through the params method which returns a hash. For example, an action that was performed through <tt>/posts?category=All&limit=5</tt> will include <tt>{ "category" => "All", "limit" => "5" }</tt> in params.
	# It's also possible to construct multi-dimensional parameter hashes by specifying keys using brackets, such as:
	#   <input type="text" name="post[name]" value="david">
	#   <input type="text" name="post[address]" value="hyacintvej">
	# A request stemming from a form holding these inputs will include <tt>{ "post" => { "name" => "david", "address" => "hyacintvej" } }</tt>.
	# If the address input had been named <tt>post[address][street]</tt>, the params would have included
	# <tt>{ "post" => { "address" => { "street" => "hyacintvej" } } }</tt>. There's no limit to the depth of the nesting.

#------------ Sessions in ActionController ----------Kenny Trionfo---12/24/2014--------
	# Sessions allow you to store XXX in between XXX. This is useful for objects that are not yet ready to be XXX, such as a Signup object constructed in a multi-paged process, or objects that don't change much and are needed all the time, such as a User object for a system that requires login. The session should not be used, however, as a cache for objects where it's likely they could be changed unknowingly. It's usually too much work to keep it all synchronized -- something databases already excel at.
	# You can place objects in the session by using the <tt>session</tt> method, which accesses a hash:
	#   session[:person] = Person.authenticate(user_name, password)
	# And retrieved again through the same hash:
	#   Hello #{session[:person]}
	# For removing objects from the session, you can either assign a single key to +nil+:
	#   # removes :person from session
	#   session[:person] = nil
	# or you can remove the entire session with +reset_session+.
	# Sessions are stored by default in a browser cookie that's cryptographically signed, but unencrypted.
	# This prevents the user from tampering with the session but also allows them to see its contents.
	# Do not put secret information in cookie-based sessions!
	#Answer:

	# Sessions allow you to store objects in between requests. This is useful for objects that are not yet ready to be persisted, such as a Signup object constructed in a multi-paged process, or objects that don't change much and are needed all the time, such as a User object for a system that requires login. The session should not be used, however, as a cache for objects where it's likely they could be changed unknowingly. It's usually too much work to keep it all synchronized -- something databases already excel at.
	# You can place objects in the session by using the <tt>session</tt> method, which accesses a hash:
	#   session[:person] = Person.authenticate(user_name, password)

	# And retrieved again through the same hash:
	#   Hello #{session[:person]}
	#
	# For removing objects from the session, you can either assign a single key to +nil+:
	#   # removes :person from session
	#   session[:person] = nil
	#
	# or you can remove the entire session with +reset_session+.
	# Sessions are stored by default in a browser cookie that's cryptographically signed, but unencrypted.
	# This prevents the user from tampering with the session but also allows them to see its contents.
	# Do not put secret information in cookie-based sessions!

#------------ Responses in ActionController ----------Kenny Trionfo---12/24/2014--------
	# Each XXX results in a XXX, which holds the headers and document to be sent to the user's browser. The actual response object is generated automatically through the use of XXXXXX and XXXXXX and requires no user intervention.
	#Answer: 

	# Each action results in a response, which holds the headers and document to be sent to the user's browser. The actual response
	# object is generated automatically through the use of renders and redirects and requires no user intervention.

#------------ Renders in Action Conroller ----------Kenny Trionfo---12/24/2014--------
	# XXXXX Controller sends content to the user by using one of five XXXXX methods. The most versatile and common is the rendering of a XXXXX. Included in the Action Pack is the Action XXXXX, which enables rendering of ERB templates. It's automatically configured.
	# The controller passes objects to the view by assigning instance variables:
	#   def show
	#     @post = Post.find(params[:id])
	#   end
	#
	# Which are then automatically available to the view:
	#   Title: <%= @post.title %>
	#
	# You don't have to rely on the automated rendering. For example, actions that could result in the rendering of different templates will use the manual rendering methods:
	#   def search
	#     @results = Search.find(params[:query])
	#     case @results.count
	#       when 0 then render action: "no_results"
	#       when 1 then render action: "show"
	#       when 2..10 then render action: "show_many"
	#     end
	#   end
	# Read more about writing ERB and Builder templates in ActionView::Base.
	#Answer: 

	# Action Controller sends content to the user by using one of five rendering methods. The most versatile and common is the rendering
	# of a template. Included in the Action Pack is the Action View, which enables rendering of ERB templates. It's automatically configured.
	# The controller passes objects to the view by assigning instance variables:
	#   def show
	#     @post = Post.find(params[:id])
	#   end
	#
	# Which are then automatically available to the view:
	#   Title: <%= @post.title %>
	#
	# You don't have to rely on the automated rendering. For example, actions that could result in the rendering of different templates
	# will use the manual rendering methods:
	#   def search
	#     @results = Search.find(params[:query])
	#     case @results.count
	#       when 0 then render action: "no_results"
	#       when 1 then render action: "show"
	#       when 2..10 then render action: "show_many"
	#     end
	#   end
	# Read more about writing ERB and Builder templates in ActionView::Base.

#------------ Redirects in ActionController ----------Kenny Trionfo---12/24/2014--------
	# Redirects are used to move from one action to another. For example, after a <tt>create</tt> action, which stores a blog entry to the database, we might like to show the user the new entry. Because we're following good DRY principles (Don't Repeat Yourself), we're going to reuse (and redirect to) a <tt>show</tt> action that we'll assume has already been created. The code might look like this:
	#
	#   def create
	#     @entry = Entry.new(params[:entry])
	#     if @entry.save
	#       # The entry was saved correctly, redirect to show
	#       redirect_to action: 'show', id: @entry.id
	#     else
	#       # things didn't go so well, do something else
	#     end
	#   end
	#
	# In this case, after saving our new entry to the database, the user is redirected to the <tt>show</tt> method, which is then executed.
	# Note that this is an external HTTP-level redirection which will cause the browser to make a second request (a GET to the show action), and not some internal re-routing which calls both "create" and then "show" within one request.
	
	# Learn more about <tt>redirect_to</tt> and what options you have in ActionController::Redirecting.

#------------ Calling multipole redirects or renders ----------Kenny Trionfo---12/26/2014------
	# An action may contain only a single render or a single redirect. Attempting to try to do either again will result in a DoubleRenderError:
	#
	#   def do_something
	#     redirect_to action: "elsewhere"
	#     render action: "overthere" # raises DoubleRenderError
	#   end
	#
	# If you need to redirect on the condition of something, then be sure to add "and return" to halt execution.
	#
	#   def do_something
	#     redirect_to(action: "elsewhere") and return if monkeys.nil?
	#     render action: "overthere" # won't be called if monkeys is nil
	#   end
	#REf: https://www.omniref.com/ruby/gems/actionpack/4.1.6/symbols/ActionController::Base#line=176

#------------ .is_a? kind_of? & instance_of? ---------Kenny Trionfo---12/9/2014--------
	# is_a? Checks class. 
	# A good way to see if an object inherits from another class. 

	# module M;    end
	# class A
	#   include M
	# end
	# class B < A; end
	# class C < B; end

	# b = B.new
	# b.is_a? A          #=> true
	# b.is_a? B          #=> true
	# b.is_a? C          #=> false
	# b.is_a? M          #=> true

	# Also kind_of? and is_a? are synonymous. instance_of? is different from the other two in that it only returns true if the object is an instance of that exact class, not a subclass.
	
	# b.kind_of? A       #=> true
	# b.kind_of? B       #=> true
	# b.kind_of? C       #=> false
	# b.kind_of? M       #=> true

	# b.instance_of? A   #=> true
	# b.instance_of? M   #=> false

	# Example: 5.is_a? Integer and 5.kind_of? Integer return true because 5 is a Fixnum and Fixnum is a subclass of Integer. However 5.instance_of? Integer returns false.

#------------ INITIALIZE, INSTANTIATION & ACCESSORS -------------Kenny Trionfo---12/9/2014--------
	# class Song
	# 	def initialize(length, type)
	# 		@length = length
	# 		@type = type
	# 	end


	# # attr_accessor :length, :type
	# 	def length
	# 		@length
	# 	end

	# 	def type 
	# 		@type
	# 	end
	# end

	# fly = Song.new(5, "endearing")
	# puts fly.length 
	# puts fly.type 

	# http://rubylearning.com/satishtalim/ruby_access_control.html
	# From tryruby.org:
	# Did you see how inside the class we used the at-symbols? Like this: @time = Time.now
	# Outside the class, we use accessors: entry.time = Time.now
	# But inside we use instance variables: @time = Time.now They're the exact same thing, but expressed in two different places of your program.
	# Accessors are variables attached to an object which can be used outside the object. (entry.time = Time.now)
	# Instance variables are the same variables you're using for accessors when inside the object. Like in a method definition. (@time = Time.now)
	# instance variables maintain state
	#  The @bark instance variable is set to the value "ruff ruff" in the initialize() method. Instance variables can be accessed by any instance methods in a class and are used to maintain "state" (state is the data that objects "know").

#---------------- .self -------------Kenny Trionfo---12/5/2014--------
	# 1-Create a "self" method that only works on the Class itself and a another method of the same name that is only an instance method inside the class and test them both by calling the same method name on the class and then on an instance of the class that you create.
	# 	Answer: 

	#  class Square
	# 	 def self.test_method
	# 		 puts "Hello from the square class."
	# 	 end

	# 	 def test_method
	# 		 puts "Hello from an instance of the class Square."
	# 	 end
	#  end

	#  Square.test_method
	# # Hello from the square class.
	#  Square.new.test_method
	# # Hello from an instance of the class Square.
	#  box = Square.new
	#  box.test_method
	# # Hello from an instance of the class Square.

#---------------- |k,v| combo in a loop  -------------Kenny Trionfo---12/5/2014--------
	# 1 create a method that creates a hash and assign it to an instance var
	# -loops through each item in the hash and puts the value of each key/value pair.
	# 3 call the method
	# Answer: 

	# def hashy_loopy_test
	# 	hashy = {first_name: "Bily", age: 342, color: "Pinkish"} 
	# 	hashy.each { |x,y| puts y }
	# end
	# hashy_loopy_test

# ------------- Super ------------------
	# Create a Class with a method in it that puts something. 
	# Create a 2nd Class that inherits from the first with a method in it that has the same name as the method in the first class and both prints something different than the previous method and calls super. 
	# Create a 3rd Class that inherits from the 2nd one with no method in it. 
	# Create an instance of the 3rd Class 
	# Call the method from the 2nd Class on it. 
	# You should see BOTH your puts statements print. 
	# 	Answer: 

	#  class Laptop
	#   def create_first_user
	#     puts "Enter your username."
	#     puts "Enter your password."
	#   end
	# end

	# class AppleComputers < Laptop
	#   def create_first_user
	#     puts "Take a photo of yourself."
	#     super
	#   end
	# end

	# class MacBookPro < AppleComputers
	# end

	# @my_new_macbook_pro = MacBookPro.new
	# @my_new_macbook_pro.create_first_user

	# => Take a photo of yourself.
	# => Enter your username.
	# => Enter your password.

# --X--------------Array & loop practice--------------------
	# -Create an array with two hashes in it with two values in each of them. 
	# -Loop through the items in the array, put each of the keys of each of the values in each hash. 
	# 	Answer: 

	# meals = [{food: 'pizza', drink: 'oj'}, {music: 'Rock n Roll', lighting: 'low'}]
	# meals.each do |x|
	# 	puts x.values 
	# end

#------------ Interpreter ----------Kenny Trionfo---12/31/2014--------
	# A program that executes instructions written in a high-level language. There are two ways to run programs written in a high-level language. The most common is to compile the program; the other method is to pass the program through an interpreter.
	# An interpreter translates high-level instructions into an intermediate form, which it then executes. In contrast, a compiler translates high-level instructions directly into machine language. Compiled programs generally run faster than interpreted programs. The advantage of an interpreter, however, is that it does not need to go through the compilation stage during which machine instructions are generated. 
	# This process can be time-consuming if the program is long. The interpreter, on the other hand, can immediately execute high-level programs. For this reason, interpreters are sometimes used during the development of a program, when a programmer wants to add small sections at a time and test them quickly. In addition, interpreters are often used in education because they allow students to program interactively.

#------------ Ruby Implementation ----------Kenny Trionfo---12/31/2014--------
	# Answer: 
	# A version of Ruby. ie. MRI, Mruby, Jruby, RubyMotion etc. 

#------------ Runtime Library ----------Kenny Trionfo---12/31/2014--------
	#Answer: 
	# In computer programming, a runtime library is a set of low-level routines used by a compiler to invoke some of the behaviors of a runtime environment, by inserting calls to the runtime library into compiled executable binary.

#------------ Reference Implementation ----------Kenny Trionfo---12/31/2014--------
	# In the software development process, a reference implementation (or, less frequently, sample implementation or model implementation) is the standard from which all other implementations, with their attendant customizations, are measured, and to which all improvements are added.
	# A reference implementation is, in general, an implementation of a specification to be used as a definitive interpretation for that specification. 

#------------ MRI ----------Kenny Trionfo---12/31/2014--------
	# Asnswer: 

	# Matz's Ruby Interpreter is the reference implementation of the Ruby programming language named after Ruby creator Yukihiro Matsumoto ("Matz").
 
# --X-------------------.respond_to?------------------
	#  Remember when we mentioned that symbols are awesome for referencing method names? Well, .respond_to? takes a symbol and returns true if an object can receive that method and false otherwise. For example,
	# [1, 2, 3].respond_to?(:push)
	# would return true, since you can call .push on an array object. However,
	# [1, 2, 3].respond_to?(:to_sym)
	# would return false, since you can't turn an array into a symbol.

# ---X-----------Use + and << to add to a string ----------
	#  You can always use plain old + or << to add a variable value into a string:
	#  try both: 
	#  	Answer: 

	# drink = "espresso"
	# "I love " + drink
	# now try with << 

	# "I love " << drink

# -----------The Symbol To Proc Trick---------------
	# Replace the .map { |string| string.upcase } way of upcasing each item in an array with passing &:upcase block to the .map method.
	# 	Answer: 
	# So replace this: 
	# p ["a", "b"].map{|string| string.upcase}
	# with this: 
	# p ["a", "b"].map(&:upcase)
	# We know that this is equivalent to:
	# But now we also make an educated guess as to why they are equivalent. We have a Symbol object (‘:upcase’), we put an ampersand in front of it and pass it to the map method. The map method takes a block, and by using the ampersand we’ve told Ruby that we want to convert our Symbol object to a Proc and associate it with the map method as its block. It turns out that Symbol implements to_proc in a special way, so that the resulting block becomes functionally equivalent to our second example above. Of course these days Ruby implements Symbol#to_proc using C, so it’s not quite as nice looking as the examples you’ll find around the web, but you get general idea.  
 
# ------------proc practice ------------------
	# 1-Create an array of floats called floats.
	# 2-create a proc to round down floats.
	# 3-Create a var that is the floats, rounded down by going through each one and passing the round_down proc to a method that iterates through each one.
	# The .floor method rounds a float (a number with a decimal) down to the nearest integer. Write a proc called round_down that will do this rounding (we've added the code to pass it to floats.collect).
		# Answer: 

	# floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
	# puts floats
	# round_down = Proc.new { |n| n.floor }
	# ints = floats.collect(&round_down)f
	# puts ints

# -------Yielding to a param that's a block ---------------
	# Define your own method, double, that accepts a single parameter and yields to a block. Then call it with a block that multiplies the number parameter by 2. You can double any number you like!
	# Answer:

	# def double(number)
	#     yield number
	# end
	# double(12) { |n| n * 2 }

# -------- turn if/else statements into ternury statements ---------------
 
# ----------- if and unless statments ---------------
	# Create a create a  one line if statement and a one line unless statement: 
	# Answer: 
	# var = 3
	# puts "I'm big" unless var < 4
	# puts "I'm little" if var < 4

# ---------Interactive Movie creating program ------------
	# Create a movies hash that people can add, update display and delete from.
	# 1- Create a hash movies. 
	# 2- ask what the user would like to do and give 4 options. add, display, update or delete. 
	# 3- put their answer into var choice
	# 4- do a case for choice with each of the four options
	# 5- when adding a new movie, use an if/else to make sure that the movie isn't already in the hash(if so, tell them), if not, get the rating from them, add it to the movies hash and tell them you added it. 
	# 6- when updating, get the movie, check to see if it's there. if not, tell them, if so, ask for the rating, update it in the hash and tell them you did. 
	# 7- when displaying, do a .each on both key and value to puts them. 
	# 8- when deleting, take the one they give you out of the hash and tell them you took it out. 
	# 9- if they give you something other than the four, tell them they have to give you one of them. 

	# movies = {
	#   Memento: 3,
	#   Primer: 4,
	#   Ishtar: 1
	# }

	# puts "What would you like to do?"
	# puts "-- Type 'add' to add a movie."
	# puts "-- Type 'update' to update a movie."
	# puts "-- Type 'display' to display all movies."
	# puts "-- Type 'delete' to delete a movie."

	# choice = gets.chomp.downcase
	# case choice
	# when 'add'
	#   puts "What movie do you want to add?"
	#   title = gets.chomp
	#   if movies[title.to_sym].nil?
	#     puts "What's the rating? (Type a number 0 to 4.)"
	#     rating = gets.chomp
	#     movies[title.to_sym] = rating.to_i
	#     puts "#{title} has been added with a rating of #{rating}."
	#   else
	#     puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
	#   end
	# when 'update'
	#   puts "What movie do you want to update?"
	#   title = gets.chomp
	#   if movies[title.to_sym].nil?
	#     puts "Movie not found!"
	#   else
	#     puts "What's the new rating? (Type a number 0 to 4.)"
	#     rating = gets.chomp
	#     movies[title.to_sym] = rating.to_i
	#     puts "#{title} has been updated with new rating of #{rating}."
	#   end
	# when 'display'
	#   movies.each do |movie, rating|
	#     puts "#{movie}: #{rating}"
	#   end
	# when 'delete'
	#   puts "What movie do you want to delete?"
	#   title = gets.chomp
	#   if movies[title.to_sym].nil?
	#     puts "Movie not found!"
	#   else
	#     movies.delete(title.to_sym)
	#     puts "#{title} has been removed."
	#   end
	# else
	#   puts "Sorry, I didn't understand you."
	# end

# ------------ ONE LINE CLASS ---------
	# 1-Write the following class in one line.
	# class Monkey
	# end
	# Answer:
	#
	# class Monkey; end

# -------- PROC VS LAMBDA -----------
	# def batman_ironman_proc
	# 	victor = Proc.new { return "Batman will win!" }
	# 	victor.call
	# 	"Iron Man will win!"
	# end
	#
	# puts batman_ironman_proc
	#
	# def batman_ironman_lambda
	# 	victor = lambda { return "Batman will win!" }
	# 	victor.call
	# 	"Iron Man will win!"
	# end
	#
	# puts batman_ironman_lambda

# ------------- CREATE A LAMBDA ---------------
	# 1-Create a lambda, symbol_filter, that takes one parameter and checks to see if that parameter .is_a? Symbol.
	# 2-Create a new variable called symbols, and store the result of calling my_array.select and passing it your lambda.
	# my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
	# Answer:
	#
	# # Add your code below!
	# symbol_filter = lambda { |x| x.is_a? Symbol }
	#
	# symbols = my_array.select(&symbol_filter)

#------------ using .select on arrays ----------Kenny Trionfo---2/12/2015--------
	# Create an array. 
	# Search through the array for a specific item using a .select block. 
	# Answer: 
	# array = ["one", "two", "boy", "girl"]
	# array.select {|x| "two" == x}

# --- iterating over hash
	# lunch_order = {
	#   "Ryan" => "wonton soup",
	#   "Eric" => "hamburger",
	#   "Jimmy" => "sandwich",
	#   "Sasha" => "salad",
	#   "Cole" => "taco"
	# }
	# lunch_order.each do |key, value|
	#     puts value
	# end

# ------ nest each do loops iterating over multi dementional arrays
	#   s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
	# s.each do |sub_array|
	#     sub_array.each do |y|
	#         puts y
	#     end
	# end

# --------- Searching Arrays -------------------
	# Multi dimentional arrays:
	# multi_d_array = [[0,1,2,3],[01,10,20,30],[001,100,200,300],[0001,1000,2000,3000]]
	# array_of_hashes = [[0,1,2], {"key"=>"value"}, 12, "girl", ["one", "two", "three"]]
	# multi_d_array.each { |x| puts "#{x}\n" }
	# print multi_d_array[0] 
	# puts multi_d_array[0][]
	# puts  array_of_hashes[0] 

	# Arrays of hashes:
	# array_of_hashes = [{"first_key"=>"first_value"}, {"key_2"=>"value_2"}]
	# puts array_of_hashes[0]
	# puts array_of_hashes[0]["first_key"]


#------------Redacted-------
	# puts "Text to search through: "
	# text = gets.chomp
	# puts "Word to redact: "
	# redact = gets.chomp
	#
	# words = text.split(" ")
	#
	# words.each do |word|
	#   if word != redact
	#     print word + " "
	#   else
	#     print "REDACTED "
	#   end
	# end

#------------required and optional parameters and methods
	#this syntax... 
	# def lunch (food, drink:"dew")
	#   puts "For lunch I'm eating #{food} drinking #{drink}"
	# end
	# lunch "pizza", drink:"OJ"
	# #does the same as this syntax:
	# def lunch food, drink:"dew"
	#   puts "For lunch I'm eating #{food} drinking #{drink}"
	# end
	# lunch "pizza", drink:"coke"

#-------------------string interpolation, include?, if else------
	# puts "what's ur name man?"
	# user_input = gets.chomp
	# user_input.downcase!
	#   if user_input.include? "s"
	#     user_input.gsub!(/s/, "th")
	#   else
	#     puts "nothing here"
	#   end
	#
	# puts "#{user_input}, do you like #{user_input.upcase} better or #{user_input.reverse} better?"
	# answer = gets.chomp
	# puts "me too. #{answer} is pretty cool"

	# print "Pick a number"
	# user_num = gets.to_i
	#
	# if user_num < 0
	# 	puts "You picked a negative number dude"
	# elsif user_num > 0
	# 	puts "You picked a pos num"
	# else
	# 	puts "You picked zero"
	# end

#---------- while loop -------------------
	# counter = 1
	# while counter < 5
	#   puts counter
	#   counter = counter + 1
	# end

	# for x in 2..12
	#   puts x
	# end

	# for k in 12..112
	#   puts k
	# end

#-------using loop-----
	# k = 21
	# loop do
	#   k -= 1
	#   next if k % 2 != 0
	#   print "#{k} "
	#   break if k == 12
	# end

	# r = 0
	# loop do
	#     r += 1
	#     print "Ruby!"
	#     break if r == 30
	# end
	#print the numbers 1-50 using a while loop:
	# n = 1
	# while n < 51 do
	#     print n
	#     n += 1
	# end
	#do the same thing but using until:
	# n = 1
	# until n > 50 do
	#     print n
	#     n += 1
	# end
	#do the samething using 'for':
	# for n in 1..50
	#     print n
	# end

#----------NEXT if--------
	# f = 0
	# loop do
	#   f += 1
	#   next if f % 2 != 0
	#   print "#{f} "
	#   break if f == 12
	# end

#-------each do-------
	# odds = [1,3,5,7,9]
	#
	# # Add your code below!
	#
	# odds.each do |item|
	#     print item * 2
	# end

#------------- .times ------
	# 5.times do
	#   puts "Kenny T rules!"
	# end
	#
	# 5.times {puts "Kenny T crushes code!"}

#---------------- blocks -------------Kenny Trionfo---12/1/2014--------
	# blocks aren't _________. And they don't all the powers and abilities of an _________ and so therefor can't be saved as a ____________.
	# 	Answer:

	# ojects. object. variables.

#---------------- yield -------------Kenny Trionfo---12/1/2014--------
	# 1-write a method that puts something yields to a block outside of it and then puts something else.
	# 	Answer:

	# def block_test
	#   puts "We're in the method!"
	#   puts "Yielding to the block..."
	#   yield
	#   puts "We're back in the method!"
	# end

	# block_test { puts ">>> We're in the block!" }

	# 2-now say that you want to execute a block of code that is outside of a method that you want to run. Use yield that takes a param inside of a method.
	# 	Answer:

	# def yield_with_param(word)
	# 	puts "before yield"
	# 	yield(word)
	# 	puts "after yield"
	# end
	# yield_with_param("shalasium") { |x| puts "#{x} is my word."}

#---------------- Object variables -------------Kenny Trionfo---12/9/2014--------
	# What's an object variable? 
	# 	Answer: 

	#  object variables (also known as instance variables) are so named because they have scope within, and are associated to, the current object. 

#---------------- LAMBDAS -------------Kenny Trionfo---12/1/2014--------
	# What is the difference between a proc and a lambda?
	# 	Answer:

	# a lambda checks the number of arguments passed to it, while a proc does not. This means that a lambda will throw an error if you pass it the wrong number of arguments, whereas a proc will ignore unexpected arguments and assign nil to any that are missing.

	# Second, when a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method.

#---------------- Lambda proc puts -------------Kenny Trionfo---12/1/2014--------
	#   why do we have to use "puts" here to call these methods and not just call them with their name? ?
	# def batman_ironman_proc
	#   victor = Proc.new { return "Batman will win!" }
	#   victor.call
	#   "Iron Man will win!"
	# end

	# puts batman_ironman_proc


	# def batman_ironman_lambda
	#   victor = lambda { return "Batman will win!" }
	#   victor.call
	#   "Iron Man will win!"
	# end

	# puts batman_ironman_lambda

#---------------- .collect -------------Kenny Trionfo---12/1/2014--------
	# 1.create an array of strings.
	# 2. Use .collect and an do/end block that capitalizes each one.
	# 	Answer:

	# string_array = ["this", "that", "the other"]
	# string_array.collect { |x| puts x.capitalize }

#---------------- RANGE -------------Kenny Trionfo---11/26/2014--------
	#Convert the alphabet range into an array and print each one.
	#Answer:

	# ('A'..'Z').to_a.each { |letter| print letter }

#--X--------------RICE ON SQUARES -------------Kenny Trionfo---11/26/2014--------
	#Use .times to create a do/end loop that starts by putting one grain of rice on a checkerboard square and then doubles it up to 12.
	# Answer:

	# x = 1
	# 12.times { puts "#{x} grains of rice here"; x *= 2 }
	# or
	# rice_on_square = 1
	# 12.times do |square|
	#  puts "On square #{square + 1} are #{rice_on_square} grain(s)"
	#  rice_on_square *= 2
	# end

#---X------------- .push -------------Kenny Trionfo---11/24/2014--------
	#.5-Create an array of strings called strings that we'd like to later use as hash keys, but we'd rather they be symbols.
	# 1-Create a new variable, symbols, and store an empty array in it.
	# 2-Use .each to iterate over the strings array.
	# 3-For each s in strings, use .to_sym to convert s to a symbol and use .push to add that new symbol to the symbols array.
	# 4-Puts symbols
	# Answer:

	# strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
	# symbols = []
	# strings.each do |s|
	#     symbols.push(s.to_sym)
	# end
	# puts symbols

#-----X----------- .select -------------Kenny Trionfo---11/24/2014--------
	#1-Create a new variable, good_movies,
	#2- set it equal to the result of calling .select on the movie_ratings hash below, selecting only movies with a rating strictly greater than 3.
	#3- Puts it to test it.
	# movie_ratings = {
	#   memento: 3,
	#   primer: 3.5,
	#   the_matrix: 5,
	#   truman_show: 4,
	#   red_dawn: 1.5,
	#   skyfall: 4,
	#   alex_cross: 2,
	#   uhf: 1,
	#   lion_king: 3.5
	# }
	# Answer:

	# good_movies = movie_ratings.select { |k,v| v > 3.0 }
	# puts good_movies

# X---------------- .each_key & .each_value -------------Kenny Trionfo---11/24/2014--------
	# Use .each_key or .each_value to print out just the titles of the movies hash below using puts.
	# movie_ratings = {
	#   memento: 3,
	#   primer: 3.5,
	#   the_matrix: 5,
	#   truman_show: 4,
	#   red_dawn: 1.5,
	#   skyfall: 4,
	#   alex_cross: 2,
	#   uhf: 1,
	#   lion_king: 3.5
	# }
	# Answer:

	# movie_ratings.each_key { |k| puts k }

#---X------------- HASH WITH A DEFAULT VALUE -------------Kenny Trionfo---11/21/2014--------
	# In irb:
	#1-Create a hash using the constructor method (.new) and put a default key in it that will get returned if u try to access a key in the hash that doesn't exist.
	# 2-Create another hash without passing in a default method but then use .default to give it a default value. 
	# Now try to pass something that doesn't exist into the hashes & u should get your defaults back.
	#Answer:

	# hash_one = Hash.new("I'm the default")
	# hash_two = Hash.new
	# hash_two.default = "I'm the other default"
	# hash_one
	# hash_one()
	# hash_one("Is this a key?")
	# hash_two
	# hash_two()
	# hash_two("Is this a key?")

#----X------------ passing multiple arguments -------------Kenny Trionfo---11/21/2014--------
	# 1-Greet each of the different people that might be coming to an event. 
	# 2-Create a method that has two parmaters, a greeting and a names that is can take multiple arguments and inside the method you iterate through multiple args using the same 
	# Answer: 

	# def what_up(greeting, *names)
	#   names.each { |name| puts "#{greeting} #{name}" }
	# end
	#  what_up("What up", "Justin", "Ben", "Kevin Sorbo")

#---X-------------print / list all items in a list using .each -------------Kenny Trionfo---11/19/2014--------
	# 1-Create a method that puts all each item in a range of 1..12 using .each
	#Answer: 

	# def puts_1_to_10
	# 	  (1..10).each { |i| puts i }
	# end
	# puts_1_to_10

#---X------------- Manipulate text split frequency -------------Kenny Trionfo---11/18/2014--------
	# create a text analyzer that takes text input from a user and analyzes how many of each word are in the block of text and returns the stats in order of most to least. 
	# 1-Ask the user for some input and gather into a var. 
	# 2-put the text from that var into an array using .split and put that into a new var. 
	# 3-Create a new hash called frequencies that takes one param zero. 
	# 4-iterate through the words array, taking each word and putting it into the frequencies hash and adding 1 to it. 
	# 5-sort the words in the frequencies var by using .sort_by on frequencies and passing in a do/end block that for the key, value pair of the frequencies hash, it sorts the value. 
	# 6- reverse the items in the hash. 
	# 7- iterate through the words and frequencies in the hash and puts the word plus ...
	# Answer: 

	# puts "Welcome to frequentizer. "
	# puts "A program that will analyze text and tell you how many of each word are in a block of text."
	# puts "Please input some text here: "
	# text = gets.chomp 
	# words = text.split(" ") 
	# frequencies = Hash.new(0) 
	# words.each { |word| frequencies[word] += 1 }
	# frequencies = frequencies.sort_by {|a, b| b }
	# frequencies.reverse!
	# frequencies.each { |word, frequency| puts word + " " + frequency.to_s } 

# ---------------- BEGIN RESCUE RAISE EXCEPTION -------------Kenny Trionfo---11/13/2014--------
	#1 Create an exception using the begin end clause. 
	#I don't understand this first one. It's from center canyon. ask Sensei for help.
	# puts "Please type in an even number"
	# num = gets.chomp.to_i
	# begin
	# 	if num % 2 == 0
	# 		puts "Great, #{num} is a great even number. Thank you."
	# 	else
	# 		throw "I'm sorry, that's not an even number." # a way to artificially kick to rescue block
	# 	end
	# rescue Exception => e  #kind of like defining a param
	# 	puts e.message
	# end

	#Another example: 
	# def raise_exception  
	# 		puts 'I am before the raise.'  
	# 		raise 'An error has occured'  
	# 	  puts 'I am after the raise'  
	# end  
	# raise_exception  

	#Another example: 
	# def raise_and_rescue  
	#   # begin  
	#   	num = 3
	#   	number = hi
	#     puts 'I am before the raise.'  

	#   rescue  
	#     puts "I'm just a puts that's after the rescue."
	#     raise  "#{num} has a bad assignment somehow" if num < 5
	#     raise "#{number} has a bad assignment somehow" if number < 5
	#     puts 'I am a puts after the raise.'  
	#   # end  
	#   	puts 'I am after the begin block.'  
	# end  
	# raise_and_rescue   
	
	# Another example: 
	# def raise_test
	# 	begin
			
	# 	   if number < 5
	# 	      puts "number is less than 5"
	# 	   end
	# 	rescue
	# 	      p "soemthing was wrong with number"
	# 	end
	# 	p "this is after the begin,rescue,end"
	# end
	# raise_test

	# Another example: 
	# def another_test
	# 	begin
	# 	if x > 2
	# 		puts "big number"
	# 	else
	# 		p "little number"
	# 	end
	# 	rescue
	# 		p "problem calculating number"
	# 	end
	# 	p "Thaks for playing"
	# end
	# another_test

	# def last_example
	# 	if x > 2
	# 		puts "big number"
	# 	else
	# 		p "little number"
	# 	end
	# rescue 
	# 	puts "if else is bad"
	# end
	# last_example

	# def bad_numbers
	# 	a = 10
	# 	b = "42"

	# 	begin
	# 	   a + b
	# 	rescue
	# 	   puts "Could not add variables a (#{a.class}) and b (#{b.class})"
	# 	else
	# 	   puts "a + b is #{a + b}"
	# 	end
	# end
	# bad_numbers

	# Another example: 
	# 	def raise_example 
	# 		number = 3 
	# 	rescue  
	# 		raise "number is less than 5 " if number < 5 
	# 		p "number is greater than 5" 
	# 	end 
	# raise_example

	# Ref: http://rubylearning.com/satishtalim/ruby_exceptions.html 
	# http://ruby.bastardsbook.com/chapters/exception-handling/

#------------REST & Restful Actions----------Kenny Trionfo---5/5/2015--------
	# RESTful
	#  Representational State Transfer (REST) for web services
	# http://rest.elkstein.org/

#------------Encapsulation----------Kenny Trionfo---5/5/2015--------
	# Encapsulation----------Kenny
	#  Encapsulation
	# Encapsulation is the ability for an object to have certain methods and attributes available for use publicly (from any section of code), but for others to be visible only within the class itself or by other objects of the same class.

#------------Validation----------Kenny Trionfo---5/5/2015--------
	# review Validations & look up business validations for center Canyon app
	#  http://guides.rubyonrails.org/active_record_validations.html

#---------------- SUPER TO OVERLOAD METHODS -------------Kenny Trionfo---11/21/2014--------
	# 1. Create a Class with a method in it that puts something.
	# 2. Create a 2nd Class that inherits from the first with a method in it that has the same name as the method in the first class and both prints something different than the previous method and calls super.
	# 3. Create a 3rd Class that inherits from the 2nd one with no method in it.
	# 4. Create an instance of the 3rd Class.
	# 5. Call the method from the 2nd Class on it.
	# Answer:

	# class Laptop
	# 	def create_first_user
	# 		puts "Enter your username."
	# 		puts "Enter your password."
	# 	end
	# end
	# class AppleComputers < Laptop
	# 	def create_first_user
	# 		puts "Take a photo of yourself."
	# 		super
	# 	end
	# end
	# class MacBookPro < AppleComputers
	# end

	# @my_new_macbook_pro = MacBookPro.new
	# @my_new_macbook_pro.create_first_user
	# # => Take a photo of yourself.
	# # => Enter your username.# => Enter your password.

	# http://rubylearning.com/satishtalim/ruby_overriding_methods.html

#---X------------- TERNARY ("Conditional") OPERATOR -------------Kenny Trionfo---11/14/2014--------
	# 1 Ask the user to imput their age and capture their response in a var.
	# 2 puts that the person is a "child" if the age is under 18 and an "adult" if not. 
	#Answer: 

	# puts "Please input your age here:"
	# age = gets.chomp.to_i
	# puts "You are a " + (age < 18 ? "child" : "adult")

#---------------- RAISE EXCEPTION -------------------
	# def raise_exception
	# 	puts "I am before the raise"
	# 	raise "This is ur message that an error has occurred"
	# 	puts "I am after the raise"
	# end
	# raise_exception

# --------------------quick little method to show the components of a URL------------
	# test urls to play withtest
	# http://api.popshops.com/v3/deals.json?account=etl4xy4bqez70idzyypjwyfxn&catalog=dxeqyv83t3vcox7iztg9ufg16
	# http://www.ruby-doc.org/stdlib-1.9.3/libdoc/uri/rdoc/URI.html#method-c-parse

	# require 'net/http' # this automatically does a  require 'uri'
	# def uri_tester
	# 	puts "Enter a full web address including the http:// part:"
	# 	address = gets.chomp
	# 	uri = URI(address)
	# 	puts "Here are the URL component details:"
	# 	puts "uri scheme(protocol) ie-http, https, ftp, file : #{uri.scheme}"
	# 	puts "uri userinfo: #{uri.userinfo}" # something wrong with Userinfo. "undefined method"
	# 	puts "uri host(domain name): #{uri.host}"
	# 	puts "uri port: #{uri.port}"
	# 	puts "uri registry: #{uri.registry}"
	# 	puts "uri path: #{uri.path}"
	# 	puts "uri opaque: #{uri.opaque}"
	# 	puts "uri query: #{uri.query}"
	# 	puts "uri fragment: #{uri.fragment}"
	# 	puts URI.split(address)
	# end
	# uri_tester

	# URI Stuff
	#  a string of characters used to identify a name of a resource. Such identification enables interaction with representations of the resource over a network, typically the World Wide Web, using specific protocols. 

	# Schemes specifying a concrete syntax and associated protocols define each URI. The most common form of URI is the uniform resource locator (URL), frequently referred to informally as a web address. 

	# More rarely seen in usage is the uniform resource name (URN), which was designed to complement URLs by providing a mechanism for the identification of resources in particular namespaces.

	# URI: 
	# Uniform resource identifier 
	# -doesn't give specific protocol
	# -doesn't give specific path
	# -more general
	# ex: just a name. ie Tim Warner

	# URN: 
	# Uniform resource Name
	# ex: a name with a global unique identifier like ssn 

	# URL:
	# Uniform resource locator
	# -Typical web address
	# -The headers can be:
	# http://
	# ftp://
	# file://
	# ex: then add to the name and ssn a geospacial coordinator that gives the specific address.


	# All URLs are (or are derived from) URIs, but not all URI's are derived from URLs.

	# More on the relationship between URIs, URLs, and URNs
	# http://en.wikipedia.org/wiki/Uniform_resource_identifier

	# http://danielmiessler.com/study/url_vs_uri/

	# Vid: 
	# https://www.youtube.com/watch?v=if0pzXWZOfY

#------------- Super -------------------
	# Create a Class with a method in it that puts something.
	# Create a 2nd Class that inherits from the first with a method in it that has the same name as the method in the first class and both prints something different than the previous method and calls super.
	# Create a 3rd Class that inherits from the 2nd one with no method in it.
	# Create an instance of the 3rd Class
	# Call the method from the 2nd Class on it.

	# class Laptop
	#   def create_first_user
	#     puts "Enter your username."
	#     puts "Enter your password."
	#   end
	# end

	# class AppleComputers < Laptop
	#   def create_first_user
	#     puts "Take a photo of yourself."
	#     super
	#   end
	# end

	# class MacBookPro < AppleComputers
	# end

	# @my_new_macbook_pro = MacBookPro.new
	# @my_new_macbook_pro.create_first_user

	# => Take a photo of yourself.
	# => Enter your username.
	# => Enter your password.

#-----------Loops -------------------
	# While loop
	# counter = 1
	# while counter < 11
	#   puts counter
	#   counter = counter + 1
	# end

	# For Loop
	# use for loops when you know how many times you'll be looping.
	# iterate with a loop
	# i = 0
	# loop do
	# 	i += 2
	# 	print "#{i} "
	# 	break if i == 24
	# end

#---------------- hashes -------------------
	# 1-create a new hash with the contructor method
	#2- pass in a new key/value pair
	#3-access just the value.
	# Answer: 

	# my_path[:ack] = 12  #adds key ack w/ value 12 to hash my_path
	#  => 12
	# 2.1.1 :005 > my_path
	#  => {:ack=>12}
	#calls ack's value from the hash (but only if the format the hash was saved in was )
	# my_path[:ack]
	#  => 12

#---------------- 2 ways to do hash syntax -------------------
	#create a hash with a couple of key/value pairs in it with the rocket syntax.
	#2- create a hash with a couple of key/value pairs in it using the 
	# hash = {"name" => "David", "age" => 49 }
	# hash = { name: "David", age: 49 }
	# #call a value:
	# hash[:name]
	# #create the new k/v pair too I think)
	# hash[:eye_color] = "Brown"

#------------ Proc and Lambda practice ----------Kenny Trionfo---1/8/2015--------
	# def batman_ironman_proc
	#   victor = Proc.new { return "Batman will win!" }
	#   victor.call
	#   "Iron Man will win!"
	# end

	# puts batman_ironman_proc

	# def batman_ironman_lambda
	#   victor = lambda { return "Batman will win!" }
	#   victor.call
	#   "Iron Man will win!"
	# end

	# puts batman_ironman_lambda

# ---------------- iterating over hash -------------------------
	# lunch_order = {
	#   "Ryan" => "wonton soup",
	#   "Eric" => "hamburger",
	#   "Jimmy" => "sandwich",
	#   "Sasha" => "salad",
	#   "Cole" => "taco"
	# }
	# lunch_order.each do |key, value|
	#     puts value
	# end

# ------ nest each do loops iterating over multi dementional arrays ----------------
	#   s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
	# s.each do |sub_array|
	#     sub_array.each do |y|
	#         puts y
	#     end
	# end

# --------- Multi dimentional arrays
	# multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
	# multi_d_array.each { |x| puts "#{x}\n" }

#------------Redacted-------
	# puts "Text to search through: "
	# text = gets.chomp
	# puts "Word to redact: "
	# redact = gets.chomp
	#
	# words = text.split(" ")
	#
	# words.each do |word|
	#   if word != redact
	#     print word + " "
	#   else
	#     print "REDACTED "
	#   end
	# end

#------------required and optional parameters and methods
	#this syntax does the same as...
	# def lunch (food, drink:"dew")
	#   puts "For lunch I'm eating #{food} drinking #{drink}"
	# end
	# lunch ("pizza", drink=>"coke")
	# #this syntax:
	# def lunch food, drink:"dew"
	#   puts "For lunch I'm eating #{food} drinking #{drink}"
	# end
	# lunch "pizza", drink:"coke"

#-------------------string interpolation, include?, if else------
	# Ask user to input a word with the letter R in it. 
	# Downcase the sentence. 
	# If the sentence has any r's, replace them with D's, otherwise puts "You didn't include the letter R anywhere." 
	# Ask them if they like the name better in upper case or lower like: "do you like RICE better or rice better?"
	# Respond with their answer in the sentence saying something like: "Yeah, I like RICE too."
	# Answer: 

	# puts "what's ur name man?"
	# user_input = gets.chomp
	# user_input.downcase!
	#   if user_input.include? "s"
	#     user_input.gsub!(/s/, "th")
	#   else
	#     puts "nothing here"
	#   end
	#
	# puts "#{user_input}, do you like #{user_input.upcase} better or #{user_input.reverse} better?"
	# answer = gets.chomp
	# puts "me too. #{answer} is pretty cool"

#------------ if else ----Kenny Trionfo---2/4/2015--------
	# Ask user for a number. 
	# If the number is less than 10, tell them that they picked such a little number, otherwise tell them that they picked a number over 10, then if it's not either of those, tell them that they picked the number 10. 
	# Answer: 

	# print "Pick a number"
	# user_num = gets.to_i
	#
	# if user_num < 0
	# 	puts "You picked a negative number dude"
	# elsif user_num > 0
	# 	puts "You picked a pos num"
	# else
	# 	puts "You picked zero"
	# end

 
	#### while loop ######
	# counter = 1
	# while counter < 5
	#   puts counter
	#   counter = counter + 1
	# end

	# for x in 2..12
	#   puts x
	# end

	# for k in 12..112
	#   puts k
	# end

#-------using loop----------
	# Create a loop that counts down from 20 by 2, printing each number and stop it if it gets to 12. 
	# Answer: 
	# 	k = 22
	# 	loop do
	# 	  k -= 1
	# 	  next if k % 2 != 0
	# 	  print "#{k} "
	# 	  break if k == 12
	# 	end
	# EasyLang: 
	# As I understand it, the loop reads as follows "If i divided by 2 produces no remainder, then put i"

	# My attempt at another version: 
	# n = 22
	# loop do 
	# 	n -=1
	# 	next if n % 2 > 0 
	# 	next if n > 11
	# 	print "#{n} "
	# 	break if n == -2
	# end

# r = 0
# loop do
#     r += 1
#     print "Ruby!"
#     break if r == 30
# end

#print the numbers 1-50 using a while loop:
# n = 1
# while n < 51 do
#     print n
#     n += 1
# end
#do the same thing but using until:
# n = 1
# until n > 50 do
#     print n
#     n += 1
# end
#do the samething using 'for':
# for n in 1..50
#     print n
# end

#----------NEXT if--------
	# f = 0
	# loop do
	#   f += 1
	#   next if f % 2 != 0
	#   print "#{f} "
	#   break if f == 12
	# end

#-------each do-------
	# odds = [1,3,5,7,9]
	#
	# # Add your code below!
	#
	# odds.each do |item|
	#     print item * 2
	# end

#------------- .times ------
	# Use .times to puts something 3 times. 
	# Answer: 

	# 5.times do
	#   puts "Kenny T rules!"
	# end
	#
	# 5.times {puts "Kenny T crushes code!"}

#------------ review blocks, procs and lambdas section in codecadamy  -------Kenny Trionfo---1/2/2015--------

#------------ Finish Rails course on Codecadamy ----------Kenny Trionfo---1/2/2015--------

#------------ review dpl vids ----------Kenny Trionfo---1/2/2015--------

