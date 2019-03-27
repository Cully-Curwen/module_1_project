# require_relative '../config/environment'

class Welcome

@prompt = TTY::Prompt.new

def self.run(user)
    # Welcom clie
    LandingPage.run(user)
end

def self.new_page
    puts "Welcome to the Quiz!" #Replace with Graphic
    choices = ["Sign-in", "New User"]
    case @prompt.select("Which page would you like to proceed to?", choices) 
    when "Sign-in"
        user = User.sign_in
        self.run(user)
    when "New User"
        user = User.register
        self.run(user)
    end
end
    
end    
