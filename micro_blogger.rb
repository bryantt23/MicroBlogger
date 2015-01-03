require 'jumpstart_auth'

class MicroBlogger
  attr_reader :client

  def initialize
    # puts "Initializing MicroBlogger"
    puts "Initializing..."
    @client = JumpstartAuth.twitter
 
  end
end