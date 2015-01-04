require 'jumpstart_auth'
require 'klout'


class MicroBlogger
  attr_reader :client
  def initialize
    # puts "Initializing MicroBlogger"
    puts "Initializing..."
    @client = JumpstartAuth.twitter
    Klout.api_key = 'xu9ztgnacmjx3bu82warbr3h'

  end

  def tweet(message)
    @client.update(message)
  end
=begin

  def run
    puts "Welcome to the JSL Twitter Client!"
    command = ""
    while command != "q"
      printf "enter command: "
      command = gets.chomp

      case command
      when 'q' then puts "Goodbye!"
      else
      puts "Sorry, I don't know how to #{command}"
      end

    end
  end
=end


 def run
    command = ""
    while command != "q"
      printf "Enter command: "
      input = gets.chomp
      parts = input.split(" ")
      command = parts[0]
      case command
         when 'q' then puts "Goodbye!"
         when 't' then tweet(parts[1..-1].join(" "))
         else
           puts "Sorry, I don't know how to #{command}"
      end
    end
  end

def dm(target, message)
  puts "Trying to send #{target} this direct message:"
  puts message
  message = "d @#{target} #{message}"
  tweet(message)
end

def everyones_last_tweet
    friends = @client.friends
    friends.each do |friend|
      # find each friend's last message
      # print each friend's screen_name
      # print each friend's last message
      puts ""  # Just print a blank line to separate people
    end
  end
  
def shorten(original_url)
  # Shortening Code
  puts "Shortening this URL: #{original_url}"
  tweet(parts[1..-2].join(" ") + " " + shorten(parts[-1]))
end

  def klout_score
    friends = @client.friends.collect{|f| f.screen_name}
    friends.each do |friend|
      # print your friend's screen_name
      # print your friends's Klout score
      # puts "" Print a blank line to separate each friend
    end
  end
  
  

end

blogger = MicroBlogger.new
# blogger.tweet("MicroBlogger Initialized")
blogger.run

blogger.klout_score
