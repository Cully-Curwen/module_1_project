class Leaderboard

  @prompt = TTY::Prompt.new
  @coder = HTMLEntities.new
  @pastel = Pastel.new

  def self.high_scores

  end

  def self.cat_score

  end

  def self.pb
    
  end

  def self.top_quartile

  end

  def self.median_high_score

  end

  def self.bottom_quartlie

  end

  def self.menu(user)
    @user = user
    choices = {"The Knowledge Masters": 1, "Your Best Results": 2, "Category Masters":3}
    querry = ""

    case @prompt.select(querry, choices, help_color: :hidden)
    when 1
    when 2
    when 3
    end

  end

end