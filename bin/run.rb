require_relative '../config/environment'

# class Run

  # attr_accessor :user

  live = true
  while live
    system "clear"
    Styling.intro_graphic
    Styling.sam_say("Memes")
    Welcome.new_page
  end
