require_relative '../config/environment'

@prompt = TTY::Prompt.new

puts "Welcome to the Quiz!" #Replace with Graphic

def new_page
    choices = ["Sign-in", "New User"]
    case @prompt.select("Which page would you like to proceed to?", choices) 
    when "Sign-in"
        User.sign_in
    when "New User"
        User.register
    end
end
    
    
