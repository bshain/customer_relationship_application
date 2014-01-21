
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
    go_back
  end

  def go_back
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
    
    if user_search == 1
      puts "\e[H\e[2J"
      puts "Which first name would you like to look up?" 
      search_name = gets.chomp.capitalize
      @contacts.each do |contact|
        if search_name == contact.first_name
          display_contact(contact)
        elsif search_name != contact.first_name
          puts "Sorry, that first name isn't in the database."
          go_back
        end
      end 

    elsif user_search == 2
      puts "\e[H\e[2J"
      puts "Which last name would you like to look up?" 
      search_surname = gets.chomp.capitalize
      @contacts.each do |contact|
        if search_surname == contact.last_name
          display_contact(contact)
        elsif search_surname != contact.last_name
          puts "Sorry, that last name isn't in the database."
          go_back  
        end
      end 

    elsif user_search == 3
      puts "\e[H\e[2J"
      puts "Which ID would you like to look up?" 
        search_id = gets.chomp.capitalize.to_i
        @contacts.each do |contact|
          if search_id == contact.id
            display_contact(contact)
          elsif search_id != contact.id
            puts "Sorry, that name isn't in the database."
            go_back  
          end
        end 

     else
        puts "That is not a valid selection."   
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
