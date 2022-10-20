require_relative 'crud'

class User
    include Crud

    attr_accessor :first_name, :last_name, :username, :email, :password

    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
    end

    cax = User.new("Cax", "Cagnin", "cax0000", "cax@gmail.com", "1234")

    hashed_password = cax.create_hash_digest(cax.password)
    puts hashed_password


end