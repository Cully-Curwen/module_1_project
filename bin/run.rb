require_relative '../config/environment'

# class Run

  # attr_accessor :user

  live = true
  while live
    system "clear"
    Styling.intro_graphic
    Welcome.new_page
  end
