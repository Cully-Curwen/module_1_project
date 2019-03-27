class LandingPage

  @prompt = TTY::Prompt.new
  @coder = HTMLEntities.new
  @font = TTY::Font.new(:doom)
  @pastel = Pastel.new

  def format(string)
    # @pastel.red(@font.write(string))
    string
  end

  def self.run(user)
    @user = user
    live = true
    while live
      system "clear"
      querry = format(Styling.landing_page("Options"))
      options = [Styling.centre("Lets Go"), Styling.centre("Trial by Category"), Styling.centre("High Scores"), Styling.centre("Account Management"), Styling.centre("Exit")].map{ |string| format(string) }
      case @prompt.select(querry, options, help_color: :hidden)
      when format(Styling.centre("Lets Go"))
        system "clear"
        GameMaster.run(user: @user)
      when format(Styling.centre("Trial by Category"))
        system "clear"
        GameMaster.run(user: @user, category: Category.select)
      when format(Styling.centre("High Scores"))
        system "clear"
        Leaderboard.menu(@user)
      when format(Styling.centre("Account Management"))
        system "clear"
        UserAccount.edit_user
      when format(Styling.centre("Exit"))
        system "clear"
        live = false
      end
    end
    system "clear"
    # exit screen 
    Welcome.new_page
  end

end