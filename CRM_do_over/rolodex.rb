require_relative "contact"

class Rolodex

	def initialize
		@id = 1000
		@contacts = []
	end

	def add_contact
		puts "\e[H\e[2J"
		puts "ADDING A NEW CONTACT"
		@id += 1
		puts "What is the first name?"
		first_name = gets.chomp.capitalize
		puts "What is the last name?"
		last_name = gets.chomp.capitalize
		puts "What is the email?"
		email = gets.chomp
		
		contact = Contact.new(first_name,last_name,email,@id)

		@contacts << contact
		puts "\e[H\e[2J"
		puts "NEW CONTACT"
		puts "ID: #{contact.id}"
		puts "Name: #{contact.first_name} #{contact.last_name}"
		puts "Email: #{contact.email}"

		go_back
	end

	# def display_contact(c)
	# 	puts "ID: #{c.id}"
	# 	puts "Name: #{c.first_name} #{c.last_name}"
	# 	puts "Email: #{c.email}"
		
	# 	go_back
	# end


	def go_back
	    puts   
	    puts  "Press enter to perform another action."
	    enter = gets.chomp
	end

	def modify_contact
		puts "\e[H\e[2J"
		puts "MODIFYING A CONTACT"
		puts "Enter the ID of the contact you would like to modify."
		eyed = gets.chomp.to_i
		@contacts.each do |contact|
			if contact.id == eyed
			# puts "\e[H\e[2J"
			puts "ID: #{contact.id}"
			puts "Name: #{contact.first_name} #{contact.last_name}"
			puts "Email: #{contact.email}"
			puts "To change First Name, type 'first name'.\nTo change Last Name, type 'last name'\nTo change email, type 'email'"
			choice = gets.chomp
			puts "Type the new #{choice} below."
			change = gets.chomp

			contact.first_name = change if choice == "first name"
			contact.last_name = change if choice == "last name"
			contact.email = change if choice == "email"
			# puts "\e[H\e[2J"
			puts "Here are the updated contact details for #{contact.id}:"
			puts "#{contact.first_name} #{contact.last_name}"
			puts "#{contact.email}"

			go_back

			end	
		end
	end

	def search_contact
		puts "\e[H\e[2J"
		puts "SEARCH FOR A CONTACT"
		puts "Search by:"
		puts "[1] First Name"
		puts "[2] Last Name"
		puts "[3] Email Address"
		puts "[4] ID"
		puts "Select a number."

		user_selected = gets.chomp.to_i

		if user_selected == 1
			puts "\e[H\e[2J"
			puts "Type the first name of the contact you are looking for."
			name = gets.chomp.capitalize
			@contacts.each do |contact|
				if contact.first_name == name
					puts "\e[H\e[2J"
					puts "ID: #{contact.id}"
					puts "Name: #{contact.first_name} #{contact.last_name}"
					puts "Email: #{contact.email}"
					go_back
				end
			end

		elsif user_selected == 2
			puts "\e[H\e[2J"
			puts "Type the last name of the contact you are looking for."
			surname = gets.chomp.capitalize
			@contacts.each do |contact|
				if contact.last_name == surname
					puts "\e[H\e[2J"
					puts "ID: #{contact.id}"
					puts "Name: #{contact.first_name} #{contact.last_name}"
					puts "Email: #{contact.email}"
					go_back
				end
			end

		elsif user_selected == 3
			puts "\e[H\e[2J"
			puts "Type the email of the contact you are looking for."
			eml = gets.chomp.downcase
			@contacts.each do |contact|
				if contact.email == eml
					puts "\e[H\e[2J"
					puts "ID: #{contact.id}"
					puts "Name: #{contact.first_name} #{contact.last_name}"
					puts "Email: #{contact.email}"
					go_back
				end
			end	

		elsif user_selected == 4
			puts "\e[H\e[2J"
			puts "Type the ID of the contact you are looking for."
			eyed = gets.chomp.to_i
			@contacts.each do |contact|
				if contact.id == eyed
					puts "\e[H\e[2J"
					puts "ID: #{contact.id}"
					puts "Name: #{contact.first_name} #{contact.last_name}"
					puts "Email: #{contact.email}"
					go_back
				end
			end	
		end		
	end


	def show_all
		puts "\e[H\e[2J"
		puts "Here are all the contacts in the database:"
		@contacts.each do |contact|
			puts "=========="
			puts "ID: #{contact.id}"
			puts "Name: #{contact.first_name} #{contact.last_name}"
			puts "Email: #{contact.email}"
		end
		go_back
	end

	def delete_contact
		puts "\e[H\e[2J"
		puts "DELETE A CONTACT"
		puts "Search for the contact you'd like to delete"
		puts "[1] First Name"
		puts "[2] Last Name"
		puts "[3] Email Address"
		puts "[4] ID"
		puts "Select a number."

		user_selected = gets.chomp.to_i

		if user_selected == 1
			puts "\e[H\e[2J"
			puts "Type the first name of the contact you are looking for."
			name = gets.chomp.capitalize
			@contacts.each do |contact|
				if contact.first_name == name
					@contacts.delete(contact)
					puts "\e[H\e[2J"
					puts "You have just deleted #{contact.first_name} #{contact.last_name}."
					go_back
				end
			end

		elsif user_selected == 2
			puts "\e[H\e[2J"
			puts "Type the last name of the contact you are looking for."
			surname = gets.chomp.capitalize
			@contacts.each do |contact|
				if contact.last_name == surname
					@contacts.delete(contact)
					puts "\e[H\e[2J"
					puts "You have just deleted #{contact.first_name} #{contact.last_name}."
					go_back
				end
			end

		elsif user_selected == 3
			puts "\e[H\e[2J"
			puts "Type the email of the contact you are looking for."
			eml = gets.chomp.capitalize
			@contacts.each do |contact|
				if contact.first_name == eml
					@contacts.delete(contact)
					puts "\e[H\e[2J"
					puts "You have just deleted #{contact.first_name} #{contact.last_name}."
					go_back
				end
			end

		elsif user_selected == 4
			puts "\e[H\e[2J"
			puts "Type the ID of the contact you are looking for."
			eyed = gets.chomp.capitalize
			@contacts.each do |contact|
				if contact.first_name == eyed
					@contacts.delete(contact)
					puts "\e[H\e[2J"
					puts "You have just deleted #{contact.first_name} #{contact.last_name}."
					go_back
				end
			end
		end
	end

end