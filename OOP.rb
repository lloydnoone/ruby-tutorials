class ApiConnector
  attr_accessor :title, :description, :url

  def initialize(title: title, description: description, url: url = "google.com")
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def api_logger
    puts "API Connector starting..."
  end

  private
    def secret_method
      puts "secret method from inside the parent class"
    end
end

class SmsConnector < ApiConnector
  def send_sms
    `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts/1" #{@url}`
  end
end

class PhoneConnector < ApiConnector
  def api_logger
    super
    puts "Phone call api connection starting..."
  end

  def send_phone_call
    puts "Sending phone call..."
  end
end

class MailConnector < ApiConnector
  def send_email
    puts "Sending email..."
  end
end


#sms = SmsConnector.new(title: "My Title", description: "MY Cool Desription", url: "http://edutechional-smsy.herokuapp.com/notifications")
phone = PhoneConnector.new(title: "My Title", description: "MY Cool Desription", url: "http://edutechional-smsy.herokuapp.com/notifications")

#sms.send_sms
phone.api_logger