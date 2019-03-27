class Welcome

@prompt = TTY::Prompt.new(active_color: :cyan)
@FONT = TTY::Font.new(:doom)
@PASTEL = Pastel.new

# puts_super_fast(@PASTEL.black("You usedwith ") + @PASTEL.bright_white.on_bright_red.bold("thankyou"))

def self.run(user)
    LandingPage.run(user)
end

def self.new_page
    choices = [Styling.centre("Sign-in"), Styling.centre("New User")]
    case @prompt.select(Styling.landing_page("Which page would you like to proceed to?"), choices, help_color: :hidden) 
    when Styling.centre("Sign-in")
        user = User.sign_in
        self.run(user)
    when Styling.centre("New User")
        user = User.register
        self.run(user)
    end
end
    
end    
