class GameMaster

  @prompt = TTY::Prompt.new
  @coder = HTMLEntities.new
  
  def self.get_question_from_db(category)
    # pull a questionfrom db 
    if category
      if !@cat_range
        @cat_range = Question.where(category: category).shuffle
      end
      @question = @cat_range.shift
    else
      @question = Question.find_by(id: rand(Question.maximum(:id)))
    end
  end
  
  def self.generate_question(category)
    # creates an array of answer options and creates a test instance in the db
    options_collection = [@question.correct_answer, @question.incorrect_answer_01, @question.incorrect_answer_02, @question.incorrect_answer_03]
    @options = options_collection.map{ |string| @coder.decode(string) }.sample(4)
    @test = Test.create(user_id: @user.id, question_id: @question.id, session: @session.id)
    if category
      @test.update(category: category)
    end
  end
  
  def self.cred_of_answer
    # assigns a true or false statment depending if user got the answer for the question correct, and pushes to db
    check = @coder.decode(@question.correct_answer)
    @answer == check ? @test.credibility = true : @test.credibility = false
    @test.save
  end

  def self.high_score_check(category)
    # check that the session is not a category session
    category ? return : true
    # finds number of correct answers and time taken for the session
    score = @session.score
    time = @session.time
    time ? time : time = 0
    user_best_session = Session.find_by(id: @user.high_score_session_id)
    if !@user.high_score_session_id
      # if this is the first time playing set the seesion result as high score 
      @user.update(high_score_session_id: @session.id)
      puts "That's all I expected from you on your first go"
      puts "Guess that makes your high score: #{score} correct answers"
      puts "taking you a #{time} seconds"
    elsif score > user_best_session.score
      # if this sesion score is the highest score update the users high score with this session score
      @user.update(high_score_session_id: @session.id)
      puts "Well you have out done yourself!"
      puts "You have a new high score: #{score} correct anwers"
      puts "taking you a #{time} seconds"
    elsif score == user_best_session.score && time < user_best_session.time
      # if the high score matches the saved high score, but is quicker, replace with this session score and time
      @user.update(high_score: score, high_score_time: time, high_score_session: @session)
      puts "You have matched your high score of #{score} correct anwers!"
      puts "Better yet you have got quicker taking #{time} seconds"
      puts "Now you just need to get more answers right!"
    elsif score == user_best_session.score && time > user_best_session.time
      # if the high score is the same but slower, just push text and leave persited high score and time
      puts "You have matched you high score of #{score} correct anwers!"
      puts "But you where slower at #{time} seconds"
      puts "Get Quicker!!!"
    end
  end

  def self.time_dif
    # finds the start of the session (when first test created) and last updated_at (time of last answer)
    start_time = Test.where(session: @session.id).minimum(:created_at)
    end_time = Test.where(session: @session.id).maximum(:updated_at)
    elapsed_seconds = end_time.to_f - start_time.to_f
    elapsed_seconds.to_i
  end

  def self.session_data
    score = Test.where(session: @session.id, credibility: 't').count
    @session.update(time: self.time_dif, score: score)
  end
  
  def self.end_session?(category)
    # should the session end or not
    if @test.credibility
      @correct += 1
      system "clear"
      Styling.correct_banner
      puts "You have got #{@correct} correct so far"
      @prompt.select("*"*20, "Next Question", help_color: :hidden)
    else
      @live -= 1
      Styling.heart_break
      if @live > 0
        puts "Lives: #{@coder.decode("&#10084;  ") * @live}"
        puts "The correct answer was #{@coder.decode(@question.correct_answer)}"
        @prompt.select("*"*20, "Next Question", help_color: :hidden)
      else
        self.session_data
        system 'clear'
        Styling.game_over
        puts "The correct answer was #{@coder.decode(@question.correct_answer)}"
        GameMaster.high_score_check(category)
        puts "Now Go!!!"
        @prompt.select("*"*20, "Leave", help_color: :hidden)
      end
    end
  end
  
  def self.run(user: user, settings: settings = nil, category: category = nil)
    # method that run the game session
    @user = user
    category ? @session = Session.create(user_id: @user.id, category: category) : @session =Session.create(user_id: @user.id)
    @settings = settings # never implemented 
    @correct = 0
    @count = 1
    @live = 3
    while @live > 0
      system "clear"
      Styling.smart_graphic
      puts "Lives: #{@coder.decode("&#10084;  ") * @live}"
      puts ("Question number #{@count} is:")
      # gets a question from the db
      self.get_question_from_db(category)
      # pull out useful components from question object
      self.generate_question(category)
      question_decoded = @coder.decode(@question.question)
      # anser the question
      @answer = @prompt.select(Styling.landing_page(question_decoded), @options, help_color: :hidden)
      # checks if answer is good
      self.cred_of_answer
      # does the player get to continue
      self.end_session?(category)
      @count += 1
    end
  end
  
end