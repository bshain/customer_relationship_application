require_relative 'contact'
require_relative 'rolodex'


class CRM

  attr_accessor :user_selected

  def initialize
    @rolo = Rolodex.new
  end


  def print_main_menu
    puts "\e[H\e[2J"
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Search for a contact"
    puts "[5] Display all contacts"
    puts "[6] Exit"
    puts "Enter a number: "

  end

  def call_option(user_selected)
    @rolo.add_new_contact if user_selected == 1
    @rolo.modify_contact if user_selected == 2
    @rolo.delete_contact if user_selected == 3
    @rolo.search_contact if user_selected == 4
    @rolo.display_all_contacts if user_selected == 5
    @rolo.exit if user_selected == 6
  end

  def run
    unless user_selected==6
      print_main_menu
      user_selected = gets.chomp.to_i
      call_option(user_selected)
     else
      call_option(user_selected) 
    end
  end

end

CRM.new.run

# while input !=6 do 



