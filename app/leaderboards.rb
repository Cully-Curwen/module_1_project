  class Leaderboard

  @prompt = TTY::Prompt.new
  @coder = HTMLEntities.new
  @pastel = Pastel.new

  @category_keys = [
    "Entertainment: Books",
    "Entertainment: Cartoon & Animations",
    "Entertainment: Film",
    "Entertainment: Japanese Anime & Manga",
    "Entertainment: Music",
    "Entertainment: Television",
    "Entertainment: Video Games",
    "General Knowledge",
    "Geography",
    "History",
    "Science & Nature",
    "Science: Computers",
    "Sports",
    "Vehicles"
  ]

  def self.high_scores
    top_10 = Session.where(category: nil).order(score: :desc, time: :asc).limit(10)
  end

  def self.print_out(array, type)
    rows = []
    case type
    when "masters"
      header = ["Master", "Correct Answers", "Time (seconds)"]
      array.map do |session|
        rows << ["#{User.find_by(id: session.user_id).name}", "#{session.score}", "#{session.time}"]
      end
    when "pbs"
      header = ["Category", "Correct Answers", "Time (seconds)"]
      rows = array
    else
      puts "Error in leaderboards.print_out method --> case 'type' - failed"
    end
    table = TTY::Table.new header, rows
    output = table.render(:unicode, alignments: [:left, :center, :center], padding: [0,2,0,2] ) do |renderer|
      renderer.border.separator = :each_row
    end
    puts output    
  end
  
  def self.cat_score
    # searched database by categorys to find the highest score and the user
    header = ["Category", "Master", "Correct Answers", "Time (seconds)"]
    # rows start with everything cat high score - i.e. the grand master
    top_user = Session.where(category: nil).order(score: :desc, time: :asc).first
    rows = [["EVERYTHING", User.find_by(id: top_user.user_id).name, top_user.score, top_user.time]]
    @category_keys.map do |key|
      session = Session.where(category: "#{key}").order(score: :desc, time: :asc).first
      if session
        name = User.find_by(id: session.user_id).name
        score = session.score
        time = session.time
        rows << [key, name, "#{score}", "#{time}"]
      else
        name = "-"
        score = "-"
        time = "-"
        rows << [key, name, score, time]
      end
    end
    table = TTY::Table.new header, rows
    output = table.render(:unicode, alignments: [:left, :center, :center, :center], padding: [0,2,0,2] ) do |renderer|
      renderer.border.separator = :each_row
    end
    puts output   
  end
  
  def self.pb_scores
    # searched database by categorys to find the highest score and the user
    # rows start with everything cat high score 
    top_user = Session.where(user_id: @user.id, category: nil).order(score: :desc, time: :asc).first
    rows = [["EVERYTHING", top_user.score, top_user.time]]
    @category_keys.map do |key|
      session = Session.where(user_id: @user.id, category: "#{key}").order(score: :desc, time: :asc).first
      if session
        score = session.score
        time = session.time
        rows << [key, "#{score}", "#{time}"]
      else
        score = "-"
        time = "-"
        rows << [key, score, time]
      end
    end 
    rows
  end
  
  def self.top_quartile
    
  end

  def self.median_high_score

  end

  def self.bottom_quartlie

  end

  def self.menu(user)
    @user = user
    choices = {"The Knowledge Masters": 1,  "Category Masters": 2, "Your Best Results": 3,"Go Back": 0}
    querry = ""
    live = true
    while live
      system "clear"
      case @prompt.select(querry, choices, help_color: :hidden)
      when 1
        self.print_out(self.high_scores, "masters")
        @prompt.select("", "Go Back",help_color: :hidden)
      when 2
        self.cat_score
        @prompt.select("", "Go Back",help_color: :hidden)
      when 3
        self.print_out(self.pb_scores, "pbs")  
        @prompt.select("", "Go Back",help_color: :hidden)
      else
        live = false
      end
    end

  end

end
