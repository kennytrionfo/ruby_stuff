# This is a place to put better explanations of errors for the good of humankind. 

# IRB: 
	# NameError: undefined local variable or method `kenny' for main:Object
		# code: 
		# > kenny[0].upcase
		# ce: 
		# The local variable or method 'Kenny' that is trying to call something on the main object isn't defined. 
		
	# rm: cannot remove `nothing_here': Is a directory
		#code: 
		#vagrant@ic-dev-box:~/projects/kennysandbox/ruby_stuff$ rm nothing_here
		#ce:
		#You can't remove 'nothing_here'. It is a directory. 

# Browser errors in an App
	# Syntax error - extra comma
		# SyntaxError in ProductsController#index
		# /home/vagrant/projects/kennysandbox/rails_stuff/depot/app/models/product.rb:2: syntax error, unexpected tIDENTIFIER, expecting keyword_end validates :title, :descriptions, :image_url presence: true ^

		# Extracted source (around line #2):

		# 1 class Product < ActiveRecord::Base
		# 2	validates :title, :descriptions, :image_url presence: true
		# 3	validates :price, numericality: {greater_than_or_equal_to: 0.01}
		# 4 end
		# 5
		# 6
		  
		# Rails.root: /home/vagrant/projects/kennysandbox/rails_stuff/depot

		# Application Trace | Framework Trace | Full Trace

		# app/models/product.rb:2: syntax error, unexpected tIDENTIFIER, expecting keyword_end
		# app/controllers/products_controller.rb:7:in `index'

# Git Errors: 
	# Error meaning: Missing path: 
		# Actual Error: 
		# fatal: ambiguous argument 'production': unknown revision or path not in the working tree.
		# Use '--' to separate paths from revisions, like this:
		# 'git <command> [<revision>...] -- [<file>...]'
		# Git error: command `git rev-parse production` in directory /home/vagrant/.bundler/cache/git/ic_integrator-a458a388e588bc0fdb2f1715a2b7c71c01cd550f has failed.


put in this in console: 
vagrant@ic-dev-box:~/projects/kennysandbox/ruby_stuff$ ruby ruby_drills.rb
Got this error: 
ruby_drills.rb:14:in `initialize': No such file or directory @ rb_sysopen - json_var (Errno::ENOENT)
        from ruby_drills.rb:14:in `open'
        from ruby_drills.rb:14:in `<main>'

Rails? Errors
When doing rake test:models
Get back: 
  1) Error:
IntegratorTest#test_1_error_free_order:
NameError: undefined local variable or method `first' for #<TestIntegrator not initialized>
    app/models/test_integrator.rb:5:in `initialize'
    test/models/integrator_test.rb:8:in `setup'

 TESTING: 
vagrant@ic-dev-box:~/projects/center_canyon_3$ rake test test/models/yl_integrator_test.rb
Starting in /home/vagrant/projects/center_canyon_3
rake aborted!
ActiveRecord::StatementInvalid: SQLite3::SQLException: cannot rollback - no transaction is active: rollback transaction

########################################################################
#------------Console 2 Errors----------Kenny Trionfo---2/19/2015--------
########################################################################

#------------undefined local variable or method----------Kenny Trionfo---2/19/2015--------
	# Didn't 
	# Running a ruby drills in ruby_drills.rb and get this message when run ruby ruby_drills.rb in console: 
	# Error: 
	# vagrant@ic-dev-box:~/projects/kennysandbox/ruby_stuff$ ruby ruby_drills.rb
	# ruby_drills.rb:51:in `<main>': undefined local variable or method `a' for main:Object (NameError)
	# Meaning: 

#------------undefined method `[]' for #<Enumerator:0x000000022a11e0>----------Kenny Trionfo---2/19/2015--------
	# The code it's reading: 
	# a = [{:first_name=>"Bily", :age=>342, :color=>"Pinkish"}, {:last_name=>"sily", :age=>442, :color=>"grennkish"}, {:no_name=>"nothing", :age=>442, :size=>"tin
	# 	y"}]

	# puts a.select[:age]

	# The error in console:
	# vagrant@ic-dev-box:~/projects/kennysandbox/ruby_stuff$ ruby ruby_drills.rb
	# ruby_drills.rb:51:in `<main>': undefined method `[]' for #<Enumerator:0x000000022a11e0> (NoMethodError)

#------------rake aborted! Errno::ETXTBSY: Text file busy @ unlink_internal----------Kenny Trionfo---2/19/2015--------
	# Code: 


	# Error: 
	# rake aborted! Errno::ETXTBSY: Text file busy @ unlink_internal

	# Meaning: 



