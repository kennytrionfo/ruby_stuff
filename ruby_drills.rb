

#----- PUT ON TIMER!


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
