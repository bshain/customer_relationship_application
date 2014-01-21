
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
    puts "Enter the ID of the contact you'd like to see."
    contact_id = gets.chomp.to_i

    @contacts.each do |x|
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
