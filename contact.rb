class Contact

attr_accessor :first_name, :last_name
# :email, :note
attr_reader :id

  def initialize(first_name, last_name, id)
    @first_name = first_name
    @last_name = last_name
    # @email = email
    # @note = note
    @id = id
  end

end

