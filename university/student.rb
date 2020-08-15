class Student

  attr_accessor :first_name, :last_name, :email, :username

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name  last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end
end

lloyd = Student.new("Lloyd", "Noone", "Lloyd1", "lloyd@email.com", "pass")
clarke = Student.new("Clarke", "Noone", "Clarke1", "clarke@email.com", "pass")

# lloyd.first_name = "Lloyd"