class LandingPage

  def initialize(user)
    @user = user
    @prompt = TTY::Prompt.new
    @coder = HTMLEntities.new
    @font = TTY::Font.new(:doom)
    @pastel = Pastel.new
  end

  def format(string)
    @pastel.red(@font.write(string))
    # string
  end

  def run
    querry = format("Options")
    options = ["New Game", "High Scores", "Account Management"].map{ |string| format(string) }
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
      # Link to accoutn Management
    else
      system "clear"
      # return to welcome page
    end

  end

end