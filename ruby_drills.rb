

#----- PUT ON TIMER!

#------------ Add memory to Vagrant box ----------Kenny Trionfo---1/5/2015--------
	# open the vagrant file found here c/virtualmachine/icdevbox in submlime and change the vb.memory in this block:
	#   config.vm.provider :virtualbox do |vb|
	#   	vb.gui = false
	#     vb.memory = 2048
	#   end

#------------ echo ----------Kenny Trionfo---1/2/2015--------
	#answer: 
	# http://www.linfo.org/echo.html

#------------ man & -h ----------Kenny Trionfo---12/31/2014--------
	# man = manual 
	# ie:
	# man rm = manual for rm command line syntax
	# man ls = manual for ls
	# -h = help (may only be for rails), ie: 
	# rails -h 

#------------ rm -rfv ./RubyMine* ----------Kenny Trionfo---12/31/2014--------
	# rm = remove 
	# -rfv = recursive force verbose 
	# ./ = in this file
	# RubyMine* = All file with filename that begins with RubyMine

#------------ .tar files ----------Kenny Trionfo---12/31/2014--------
	#Anwer:
	# Source code is often packed for download as a TAR (Tape ARchive) file, that is a standard format in the unix/Linux world. These files have a .tar extension; they can also be compressed, the extension is .tar.gz or .tar.bz2

#------------ build Pinboard site ----------Kenny Trionfo---12/24/2014--------
	# rails new pin_board -d postgresql
	# gem 'haml', '~> 4.0.6' to gemfile
	# gem 'bootstrap-sass', '~> 3.2.0.2'
	# gem 'simple_form', '~> 3.0.2'
	# -in gemfile and bundle
	# rails g model Pin title:string description:text 	
	# rake db:migrate
	# rails g controller Pins 
	# -in pins_controller.rb:
	# 	def index
	# 	end
	# -in routes.rb 
	#   resources :pins
	#   root 'pins#index'
	# -in app/views/pin create new file: 
	# index.html.haml
	# -Create CRUD in pins_controller.rb 
	# -Start wtih this: 
	# 	def new
	# 		@pin = Pin.new
	# 	end

	# 	def create
	# 		@pin = Pin.new(pin_params)
	# 	end



	# 	private

	# 	def pin_params
	# 		params.require(:pin).permit(:title, :description)
	# 	end
	# new.html.haml
	# -in view/pins 
	# -and add following: 
	# 	%h1 New Form

	# 	= render 'form'

	# 	= link_to "Back", root_path
	# -in view/pin create the form partial _form.html.haml
	# -read documentation on simple_form
	# rails g simple_form:install --bootstrap  
	# -in the form partial: 
	# = simple_form_for @pin, html: {multipart: true} do |f|
	# 	- if @pin.errors.any? 
	# 		#errors
	# 		%h2
	# 		= pluralize(@pin.errors.count, "error")
	# 		prevented this Pin from saving
	# 		%ul
	# 		- @pin.errors.full_messages.each do |msg|
	# 			%li = msg

	# 	.form-group
	# 		= f.input :title, input_html: { class: 'form-control'}

	# 	.form-group
	# 		= f.input :description, input_html: { class: 'form-control'}

	# 	= f.button :submit, class: "btn btn-primary"
	# -add to crate method: 
	# 		if @pin.save 
	# 			redirect_to @pin, notice: "Successfully created new Pin" 
	# 		else 
	# 			render 'new'
	# 		end
	# -in view/layouts, change application.html.erb to .haml
	# and above existing code add: 
	# !!! 5
	# %html
	# %head
	# 	%title Pin Board
	# 	= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true
	# 	= javascript_include_tag 'application', 'data-turbolinks-track' => tru
	# 	= csrf_meta_tags
	# %body
	# 	= yield
	# -then delete the existing 
	# -change the language setting in bottom right of sublime to ruby haml
	# - under %body and above = yield add flash message in application.html.haml file: 
	# 	- flash.each do |name, msg|
	# 		= content_tag :div, msg, class: "alert alert-info" # this is bootstrap
	# refresh and get unknow action errror
	# -create a private method called find_pin for a few of the crud actions in pins_controller: 
	# 	def find_pin
	# 		@pin = Pin.find(params[:id])
	# 	end
	# -Then at top add following before action: 
	# 	before_action :find_pin, only: [:show, :edit, :update, :destroy]
	# -Create a view for the show action with a new view file in views/pin: 
	# show.html.haml
	# -Add following to file and refresh: 
	# %h1= @pin.title
	# %p= @pin.description
	# -also add: 
	# = link_to "Back", root_path
	# -add update and destroy actions/methods to pin controller: 
	# 		def update
	# 			if @pin.update(pin_params)
	# 				redirect_to @pin, notice: "Pin was Successfully updated"
	# 			else
	# 				render 'edit'
	# 			end
	# 		end

	# 		def destroy

	# 		end
	# -create a new file for the edit page called: edit.html.haml in views/pin:
	# -and add: 
	# %h1 Edit Pin
	#  = render 'form'

	#  = link_to "Cancel", pin
	#  -on show page add link_to form like this: 
	#  = link_to "Edit", edit_pin_path
	# -add code in the destroy action to delete a pin & redirect to main index page: 
	# 		@pin.destroy
	# 		redirect_to root_path
	# -add delete button on show page: 
	# = link_to "Delete", pin_path, method: :delete, data: {confirm: "Are you sure?"}
	# -add a "new" button on the index page: 
	# = link_to "New Pin", new_pin_path
	# -add devise gem: 
	# gem 'devise', '~> 3.4.1'
	# -follow devise documentation instructions online: 
	# rails g devise:install
	# 1. in development.rb file: 
	# config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
	# 2. & 3. are done 
	# 5. run: 
	# rails g devise:view
	# rails g devise User
	# rake db:migrate
	# restart server
	# try localhost:3000/users/sign_up
	# -Make sure that each pin will be assigned to a user. 
	# Create associations in models pin.rb and user.rb 
	# has_many & belongs_to
	# -Generate a migration so that the pin table has a user_id column: 
	# rails g migration add_user_id_to_pins user_id:integer:index
	# -check migration
	# rake db:migrate
	# -Connect our existing pins to a user by going into rails c and doing something like:
	# @pin = Pin.first
	# @user = User.first 
	# @pin = @user
	# @pin.save 
	# -Then check it by adding code to display the user's email to each pin. in show.html.haml file: 
	# %p
	# Submitted by
	# = @pin.user.email

	# %br/
	# -refresh and see. 
	# -In pins_controller, change the @pin.new in both the new and the create actions to: 
	# current_user.pins.build

	# #----------------Start bootstrap stuff here: 

	# -Follow online documentation and Configure bootstrap:
	# -Add .scss to app/assests/stylesheets/application.css  
	# -Add this to the file: 
	# @import "bootstrap-sprockets";
	# @import "bootstrap"; 
	# -refresh to see new styling 
	# -Add this to the application.js file: 
	# //= require bootstrap-sprockets
	# -add navigation to application.html.haml file. Below body tag and tabbed once: 
	# %nav.navbar.navbar-default
	# 		.container
	# 			.navbar-brand= link_to "Pin Board", root_path

	# 			- if user_signed_in?
	# 				%ul.nav.navbar-nav.navbar-right
	# 					%li= link_to "New Pin", new_pin_path
	# 					%li= link_to "Account", edit_user_registration_path
	# 					%li= link_to "Sign Out", destroy_user_session_path, method: :delete
	# 			- else
	# 				%ul.nav.navbar-nav.navbar-right
	# 					%li= link_to "Sign Up", new_user_registration_path
	# 					%li= link_to "Sign In", new_user_session_path
	# -Add .container above the flash message, one tab in and lined with the first nav.bar above.  
	# -Add a wrapper around the new pin form. In new.html.haml, add:
	# .col-md-6.col-md-offset-3
	# at top and tab in rest one tab. 
	# -Do same thing to edit page.
	# -Add the ability to upload images. 
	# -Add paperclip gem:
	# gem 'paperclip', '~> 4.2.0'
	# -bundle install and restart server
	# -read paperclip documentation
	# -install imagemagic

#---------------- Create a Module as Namespace -------------Kenny Trionfo---12/16/2014--------
	# 1 Create and initialize a class Ruler that creates a new 12 inch ruler. 
	# 2 Create a module called PeopleRuler that has the same class in it with the same class Ruler in it with a method of the same name but that puts something about a ruler over the people. 
	# 3 call each of the methods from the classes. be sure to namespace the one. 
	# 4 create a new object and call each method from the two classes on them. 

	# Answer: 

	# class Ruler
	# 	def initialize
	# 	end

	# 	def new_ruler
	# 		puts "I'm a new 12 inch ruler"
	# 	end
	# end

	# module PeopleRuler
	# 	class Ruler
	# 		def initialize
	# 		end
		
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
	# ex: puts "This string has vowels" if "This is a test" =~ /[aeiou]/

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

#------------ Calling multiipole redirects or renders ----------Kenny Trionfo---12/26/2014------
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

	# b.kind_of? A       #=> true
	# b.kind_of? B       #=> true
	# b.kind_of? C       #=> false
	# b.kind_of? M       #=> true

	# Also kind_of? and is_a? are synonymous. instance_of? is different from the other two in that it only returns true if the object is an instance of that exact class, not a subclass.

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
	# 1 create a method that:
	# -creates a hash and assign it to an instance var
	# -loops through each item in the hash and puts the value of each hash
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
	# -Loop through the items in the array, put each of the keys for values in each hash. 
	# 	Answer: 

	# meals = [{food: 'pizza', drink: 'oj'}, {music: 'Rock n Roll', lighting: 'low'}]
	# meals.each do |x|
	# 	puts x.values 
	# end

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

#------------ INterpreter ----------Kenny Trionfo---12/31/2014--------
	# A program that executes instructions written in a high-level language. There are two ways to run programs written in a high-level language. The most common is to compile the program; the other method is to pass the program through an interpreter.
	# An interpreter translates high-level instructions into an intermediate form, which it then executes. In contrast, a compiler translates high-level instructions directly into machine language. Compiled programs generally run faster than interpreted programs. The advantage of an interpreter, however, is that it does not need to go through the compilation stage during which machine instructions are generated. 
	# This process can be time-consuming if the program is long. The interpreter, on the other hand, can immediately execute high-level programs. For this reason, interpreters are sometimes used during the development of a program, when a programmer wants to add small sections at a time and test them quickly. In addition, interpreters are often used in education because they allow students to program interactively.

#------------ Ruby Implmentation ----------Kenny Trionfo---12/31/2014--------
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

# --X----------Ruby's methods will return what? -------------------
		# Ansser: 

		# the result of the last evaluated expression.

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
	# ints = floats.collect(&round_down)
	# puts ints

# -------Creating a method with params ---------------
	# Define your own method, double, that accepts a single parameter and yields to a block. Then call it with a block that multiplies the number parameter by 2. You can double any number you like!
	# Answer:

	# def double(number)
	#     yield number
	# end
	# double(12) { |n| n * 2 }

# -------- turn if/else statements into ternury statements ---------------

# -----------create a  one line if and unless statments ---------------

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

	# string_hash = ["this", "that", "the other"]
	# string_hash.collect { |x| puts x.capitalize }

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

#---------------- BEGIN RESCUE RAISE EXCEPTION -------------Kenny Trionfo---11/13/2014--------
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
	#   begin  
	#     puts 'I am before the raise.'  
	#     raise 'An error has occured.'  
	#     puts 'I am after the raise.'  
	#   rescue  
	#     puts 'I am rescued.'  
	#   end  
	#   puts 'I am after the begin block.'  
	# end  
	# raise_and_rescue   

	# Ref: http://rubylearning.com/satishtalim/ruby_exceptions.html

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


#---------------- TERNARY ("Conditional") OPERATOR -------------Kenny Trionfo---11/14/2014--------
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

#------------ review blocks, procs and lambdas section in codecadamy  -------Kenny Trionfo---1/2/2015--------

#------------ Finish Rails course on Codecadamy ----------Kenny Trionfo---1/2/2015--------

#------------ review dpl vids ----------Kenny Trionfo---1/2/2015--------

