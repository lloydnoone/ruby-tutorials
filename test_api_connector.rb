class SmsConnector
  attr_accessor :title, :description, :url

  def initialize(title: title, description: description, url: url = "google.com")
    @title = title
    @description = description
    @url = url
  end

  def send_sms
    puts @title
    puts @description
    puts @url
  end
end

api = MailerConnector.new(title: "My Title", description: "MY Cool Desription", url: "yahoo.com")

class ApiConnector
  attr_accessor :title, :description, :url

  def initialize(title: title, description: description, url: url = "google.com")
    @title = title
    @description = description
    @url = url
  end

  def send_mail
    puts @title
    puts @description
    puts @url
  end
end

api = ApiConnector.new(title: "My Title", description: "MY Cool Desription", url: "yahoo.com")

class PhoneConnector
  attr_accessor :title, :description, :url

  def initialize(title: title, description: description, url: url = "google.com")
    @title = title
    @description = description
    @url = url
  end

  def testing_intitializers
    puts @title
    puts @description
    puts @url
  end
end

api = ApiConnector.new(title: "My Title", description: "MY Cool Desription", url: "yahoo.com")

api.testing_intitializers