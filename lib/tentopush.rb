require "tentopush/version"

class Tentopush
  
  def initialize()
    @destination = URI('http://192.168.1.7:3000/api/pushes')
    # secret_key en package_name hier init.
  end
  
  #overload + unique apid (of meerdere).
  def send_push(package_name, secret_key, message)
    res = Net::HTTP.post_form(@destination, 'package_name' => package_name, 'secret_key' => secret_key, 'message' => message)
  end  
  
end
