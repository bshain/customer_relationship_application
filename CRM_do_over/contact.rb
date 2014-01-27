 class Contact

 	attr_accessor :first_name, :last_name, :email, :id

 	
	def initialize (first_name, last_name, email, id)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@id = id
	end

 end