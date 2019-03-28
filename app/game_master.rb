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
    @test = Test.create(user_id: @user.id, question_id: @question.id, session: @session)
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

  def self.time_dif(start_time, end_time)
    elapsed_seconds = end_time.to_f - start_time.to_f
  end

  def self.high_score_check
    session_stats = Test.where(session: @session, credibility: true)
    score = session_stats.count
    time = session_stats.map{ |x| self.time_dif(x.created_at, x.updated_at) }.reduce(:+)
    time ? time : time = 0
    if !@user.high_score
      @user.update(high_score: score, high_score_time: time, high_score_session: @session)
      puts "That's all I expected from you on your first go"
      puts "Guess that makes your high score: #{@user.high_score} correct answers"
      puts "taking you a #{@user.high_score_time.round(3)} seconds"
    elsif score > @user.high_score
      @user.update(high_score: score, high_score_time: time, high_score_session: @session)
      puts "Well you have out done yourself!"
      puts "You have a new high score: #{@user.high_score} correct anwers"
      puts "taking you a #{@user.high_score_time.round(3)} seconds"
    elsif score == @user.high_score && time < @user.high_score_time
      puts "You have matched you high score of #{@user.high_score} correct anwers!"
      puts "Better yet you have got quicker taking #{time.round(3)} seconds"
      puts "Now you just need to get more answers right!"
    elsif score == @user.high_score && time > @user.high_score_time
      puts "You have matched you high score of #{@user.high_score} correct anwers!"
      puts "But you where slower at #{time.round(3)} seconds"
      puts "Get Quicker!!!"
    end
  end
  
  def self.end_session?
    # should the session end or not
    if @test.credibility
      @correct += 1
      system "clear"
      # Styling.correct
      puts "You have got #{@correct} correct so far"
      @prompt.select("*"*20, "Next Question", help_color: :hidden)
    else
      @live -= 1
      # Styling.heart_break
      if @live > 0

        system "clear"
        Styling.you_suck
        puts "Lives: #{@coder.decode("&#10084;  ") * @live}"
        puts "The correct answer was #{@coder.decode(@question.correct_answer)}"
        GameMaster.high_score_check
        @prompt.select("*"*20, "Next Question", help_color: :hidden)
      else
        # Styling.game_over
        puts "The correct answer was #{@coder.decode(@question.correct_answer)}"
        puts "Now Go!!!"
        @prompt.select("*"*20, "Leave", help_color: :hidden)
      end
    end
  end
  
  def self.run(user: user, settings: settings = nil, category: category = nil)
    # method that run the game session
    @user = user
    @session = Test.maximum(:session) + 1
    @settings = settings
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
      self.end_session?
      @count += 1
    end
  end
  
end