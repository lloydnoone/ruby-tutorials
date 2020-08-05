# string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

# p string =~ /quick/

# p string =~ /z/ ? "Valid" : "Invalid"
# p string =~ /Z/i ? "Valid" : "Invalid"

# p string.to_enum(:scan, /\d+/).map { Regexp.lastmatch}

# VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

# def is_valid_email? email
#   email =~ VALID_EMAIL_REGEX
# end

# p is_valid_email?("lloyd@noone.com") ? "Valid" : "Invalid"
# p is_valid_email?("lloydnoone.com") ? "Valid" : "Invalid"
# p is_valid_email?("lloyd@noone") ? "Valid" : "Invalid"
# p is_valid_email?("lloyd_n@noone") ? "Valid" : "Invalid"

IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|{2}|2[0-4]\d|25[0-5])){4})$/

def is_valid_ip_address? ip
  ip =~ IP_ADDRESS_REGEX
end

p is_valid_ip_address?("999.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address?("172.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address?("172.31.255.255") ? "Valid" : "Invalid"
p is_valid_ip_address?("172.31.255.256") ? "Valid" : "Invalid"

