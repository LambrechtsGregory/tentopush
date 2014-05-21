require 'net/http'
require 'json'
require 'uri'
class Tentopush
  
  def initialize(package_name, secret_key)
    @destination = URI('http://192.168.1.7:3000/api/pushes')
    @package_name = package_name
    @secret_key = secret_key
  end
  
  #overload + unique apid (of meerdere).
  def send_push(message)
    Net::HTTP.post_form URI(@destination),
                   { 'package_name' => @package_name, 'secret_key' => @secret_key, 'message' => message }
  end  
  
end
