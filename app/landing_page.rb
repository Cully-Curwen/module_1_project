class LandingPage

  @prompt = TTY::Prompt.new
  @coder = HTMLEntities.new
  @font = TTY::Font.new(:doom)
  @pastel = Pastel.new

  def self.run(user)
    @user = user
    live = true
    while live
      system "clear"
      Styling.smart_graphic
      Styling.fake_loading_bar
      querry = format(Styling.landing_page("Options"))
      options = [
        Styling.centre("Lets Go"),
        Styling.centre("Trial by Category"),
        Styling.centre("High Scores"),
        Styling.centre("Apprentice the GM"),
        Styling.centre("Account Management"),
        Styling.centre("Exit")
      ]
      case @prompt.select(querry, options, help_color: :hidden)
      when Styling.centre("Lets Go")
        system "clear"
        GameMaster.run(user: @user)
      when Styling.centre("Trial by Category")
        system "clear"
        GameMaster.run(user: @user, category: Category.select)
      when Styling.centre("The Lists of Standing")
        system "clear"
        Leaderboard.menu(@user)
      when Styling.centre("Apprentice the GM")
        system "clear"
        GameMaster.apprenticeship(user: @user, session: Leaderboard.high_scores.first.id)
      when Styling.centre("Account Management")
        system "clear"
        UserAccount.edit_user
      when Styling.centre("Exit")
        system "clear"
        live = false
      end
    end
    system "clear"
    # exit screen 
    Welcome.new_page
  end

end