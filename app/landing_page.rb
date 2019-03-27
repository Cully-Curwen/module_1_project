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
      querry = format("Options")
      options = ["Lets Go", "Trial by Category", "High Scores", "Account Management", "Exit"].map{ |string| format(string) }
      case @prompt.select(querry, options)
      when format("Lets Go")
        system "clear"
        GameMaster.run(user: @user)
      when format("Trial by Category")
        system "clear"
        GameMaster.run(user: @user, category: Category.select)
      when format("High Scores")
        system "clear"
        Leaderboard.menu(@user)
      when format("Account Management")
        system "clear"
        UserAccount.edit_user
      when format("Exit")
        system "clear"
        live = false
      end
    end
    system "clear"
    # exit screen 
    Welcome.new_page
  end

end