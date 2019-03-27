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
      options = ["New Game", "High Scores", "Account Management", "Exit"].map{ |string| format(string) }
      case @prompt.select(querry, options)
      when format("New Game")
        system "clear"
        GameMaster.new(@user).session
      when format("High Scores")
        system "clear"
        # link to leaderboards
        # LeaderBoards.home
      when format("Account Management")
        system "clear"
        UserAccount.edit_user
      when format("Exit")
        live = false
      end
    end
    system "clear"
    # exit screen 
    Welcome.new_page
  end

end