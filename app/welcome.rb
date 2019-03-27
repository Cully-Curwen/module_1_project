class Welcome

@prompt = TTY::Prompt.new
@FONT = TTY::Font.new(:doom)
@PASTEL = Pastel.new

# puts_super_fast(@PASTEL.black("You usedwith ") + @PASTEL.bright_white.on_bright_red.bold("thankyou"))

def self.run(user)
    Styling.intro_graphic
    LandingPage.run(user)
end

def self.new_page
    choices = {Styling.box_this("I'm Back!") => 1, Styling.centre("I'm new!!") => 2}
    case @prompt.select(Styling.landing_page("What you want?"), choices, help_color: :hidden) 
    when 1
        user = User.sign_in
        self.run(user)
    when 2
        user = User.register
        self.run(user)
    end
end
    
end    
