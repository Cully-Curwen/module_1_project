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
      puts "taking you a #{@user.high_score_time.round(2)} seconds"
    elsif score >= @user.high_score
      if time < @user.high_score_time
        @user.update(high_score: score, high_score_time: time, high_score_session: @session)
        puts "Well you have out done yourself!"
        puts "You have a new high score: #{@user.high_score} correct anwers"
        puts "taking you a #{@user.high_score_time.round(2)} seconds"
      elsif
        puts "You have matched you high score of #{@user.high_score} correct anwers!"
        puts "but you where slower at #{time.round(2)} seconds"
        puts "Get Quicker!!!"
    end
  end
  
  def self.end_session?
    # should the session end or not
    if @test.credibility
      @live = true
      @count += 1
      puts "Congratulations, you got that right!"
      sleep 1.5
      system "clear"
    else
      @live = false
      system "clear"
      puts "You got that wrong!"
      puts "The correct answer was #{@coder.decode(@question.correct_answer)}"
      GameMaster.high_score_check
      puts "Now Go!!!"
      @prompt.select("*"*20, "Leave")
    end
  end
  
  def self.run(user: user, settings: settings = nil, category: category = nil)
    # method that run the game session
    @user = user
    @session = Test.maximum(:session) + 1
    @settings = settings
    @count = 1
    @live = true
    while @live
      system "clear"
      Styling.smart_graphic
      puts "Question number #{@count} is:"
      # gets a question from the db
      self.get_question_from_db(category)
      # pull out useful components from question object
      self.generate_question(category)
      question_decoded = @coder.decode(@question.question)
      # anser the question
      @answer = @prompt.select(question_decoded, @options)
      # checks if answer is good
      self.cred_of_answer
      # does the player get to continue
      self.end_session?
    end
  end
  
end