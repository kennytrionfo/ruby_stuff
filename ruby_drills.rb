
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda


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
