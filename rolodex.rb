
require_relative 'contact'

class Rolodex

  def initialize
    @id = 1000
    @contacts = []
  end

  def add_new_contact 
    puts "\e[H\e[2J"
    @id += 1
    puts "Enter first name:"
    first_name = gets.chomp.capitalize
    puts "Enter last name:"
    last_name = gets.chomp.capitalize
    

    contact = Contact.new(first_name, last_name, @id)
   
    @contacts << contact

    display_contact(contact)

  end

  def display_contact(contact)
    puts "\e[H\e[2J"
    puts "Name: #{contact.first_name} #{contact.last_name}"
    puts "ID: #{contact.id}"
    puts
    puts  "Press enter to perform another action."
    ok = gets.chomp
  end

  def modify_contact

  end

  def search_contact
    puts "\e[H\e[2J"
    puts "Search by:"
    puts "[1] First name"
    puts "[2] Last name"
    puts "[3] ID"
    puts "Enter a number:"
    user_search = gets.chomp.to_i
    
    puts "Which name would you like to look up?" if user_search == 1
    search_name = gets.chomp.capitalize


    @contacts.each do |contact|
      if search_name == contact.first_name
        display_contact(contact)
      end
    end 
  end




  def display_all_contacts
   puts "\e[H\e[2J"
    if @contacts.empty? 
      puts "Database empty."
    else  
      @contacts.each do |contact|
        puts "ID: #{contact.id}; Name: #{contact.first_name} #{contact.last_name}"
      end
      puts "Press enter to perform another action."
      ok = gets.chomp
    end
  end
    
end
