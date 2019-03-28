class Leaderboard

  @prompt = TTY::Prompt.new
  @coder = HTMLEntities.new
  @pastel = Pastel.new

  def self.high_scores
    top_10 = User.order(high_score: :desc, high_score_time: :asc).limit(10)
    top_10.select{ |x| !!x.high_score }
  end
  def self.print_out(array, type)
    rows = []
    case type
    when "masters"
      header = ["Master", "Correct Answers", "Time (seconds)"]
      array.map do |x|
        y = ["#{x.name}", "#{x.high_score}", "#{x.high_score_time}"]
        rows << y
      end
    when "pbs"
      header = ["Category", "Correct Answers", "Time (seconds)"]
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
    # top_score = Test.
    
    category_keys = ["Entertainment: Books", "Entertainment: Cartoon & Animations", "Entertainment: Film", "Entertainment: Japanese Anime & Manga", "Entertainment: Music", "Entertainment: Television", "Entertainment: Video Games", "General Knowledge", "Geography", "History", "Science & Nature", "Science: Computers", "Sports", "Vehicles"]
    
    header = ["Category", "Master", "Correct Answers", "Time (seconds)"]
    rows = []
    category_keys.map do |key|
      search = Test.find_by_sql("SELECT user_id, session FROM tests GROUP BY session HAVING category = '#{key}' ORDER BY COUNT(session) DESC Limit 1").first
      name = User.find_by(id: search.user_id)
      score = Test.where(session: search.session, credibility: 't').count
      rows = [key, name, "#{score}"]
    end
    table = TTY::Table.new header, rows
    output = table.render(:unicode, alignments: [:left, :center, :center], padding: [0,2,0,2] ) do |renderer|
      renderer.border.separator = :each_row
    end
    puts output   
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
        self.print_out("nothing", "pbs")  
        @prompt.select("", "Go Back",help_color: :hidden)
      else
        live = false
      end
    end

  end

end
