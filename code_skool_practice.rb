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

# k = 21
# loop do
#   k -= 1
#   next if k % 2 != 0
#   print "#{k} "
#   break if k == 12
# end

#----------NEXT if--------
f = 0
loop do
  f += 1
  next if f % 2 != 0
  print "#{f} "
  break if f == 12
end
