

#----- PUT ON TIMER!



#---------------- .self -------------Kenny Trionfo---12/5/2014--------
# 1-Create a "self" method that only work on the Class itself and test it.
# 	Answer: 

#  class Square
#  def self.test_method
#  puts "Hello from the square class."
#  end
#  def test_method
#  puts "Hello from an instance of the class Square."
#  end
#  end

#  Square.test_method
# Hello from the square class.
#  Square.new.test_method
# Hello from an instance of the class Square.
#  box = Square.new
#  box.test_method
# Hello from an instance of the class Square.


#---------------- |k,v| combo in a loop  -------------Kenny Trionfo---12/5/2014--------
# 1 create a hash and assign it to an instance var
# 2 create a method that loops through each item in the hash and puts the value of each hash
# 3 call the method
	# Answer: 


#---------------- INITIALIZE A METHOD -------------Kenny Trionfo---12/5/2014--------
# 	 class Fruit
#     |   def initialize
#     |     @kind = "apple"
#     |     @condition = "ripe"
#     |   end
#     | end
# f4 = Fruit.new
#    "a ripe apple"
# http://www.rubyist.net/~slagell/ruby/objinitialization.html


# ------------- Super ------------------
# Create a Class with a method in it that puts something. 
# Create a 2nd Class that inherits from the first with a method in it that has the same name as the method in the first class and both prints something different than the previous method and calls super. 
# Create a 3rd Class that inherits from the 2nd one with no method in it. 
# Create an instance of the 3rd Class 
# Call the method from the 2nd Class on it. 
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



# ----------------Array & loop practice--------------------
# -Create an array with two items in it that are each hashes with two items in it. 
# -Loop through the items in the array, putsing each item in each hash. 
# 	Answer: 

#  meals = [{food: 'pizza', drink: 'oj'}, {food: 'burger', drink: 'water'}]

#  meals.each do |x|
#  	puts x[:food], x[:drink]
#  end


# ------------------- if ternury? maybe just if ---------------
# can't find the syntax on this one, ask Sensei
# Use the if method to call something? 
# second_item = true 
# third_item = "Third item here" 
# first_item = "I'm the first item"
# "If the second_item is true(exists), then set the first_item to the third_item"
	# Answer: 

# def if_thing
# 	({first_item=? if second_item}, third_item)
# 	p first_item
# end


# ------------Ruby's methods will return what? -------------------
# Answer: 

# the result of the last evaluated expression.


# ---------------------.respond_to?------------------
#  Remember when we mentioned that symbols are awesome for referencing method names? Well, .respond_to? takes a symbol and returns true if an object can receive that method and false otherwise. For example,
# [1, 2, 3].respond_to?(:push)
# would return true, since you can call .push on an array object. However,
# [1, 2, 3].respond_to?(:to_sym)
# would return false, since you can't turn an array into a symbol.


# --------------Use + and << to add to a string ----------
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
# ints = floats.collect(&round_down)
# puts ints


# ---------------------------------
# Define your own method, double, that accepts a single parameter and yields to a block. Then call it with a block that multiplies the number parameter by 2. You can double any number you like!
# Answer:

# def double(number)
#     yield number
# end
# double(12) { |n| n * 2 }
# -------------------------


# practice turning if/else statements into ternury statements
# -------------------------------------


# practice using one line if and unless statments
# -------------------------------------------
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
#
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
#
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
#




# end ----------
