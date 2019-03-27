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
  
  def self.generate_question
    # creates an array of answer options and creates a test instance in the db
    options_collection = [@question.correct_answer, @question.incorrect_answer_01, @question.incorrect_answer_02, @question.incorrect_answer_03]
    @options = options_collection.map{ |string| @coder.decode(string) }.sample(4)
    @test = Test.create(user_id: @user.id, question_id: @question.id, session: @session)
  end
  
  def self.cred_of_answer
    # assigns a true or false statment depending if user got the answer for the question correct, and pushes to db
    check = @coder.decode(@question.correct_answer)
    @answer == check ? @test.credibility = true : @test.credibility = false
    @test.save
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
      puts "You got #{@count - 1} right"
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
      self.get_question_from_db(category)
      self.generate_question
      question_decoded = @coder.decode(@question.question)
      @answer = @prompt.select(question_decoded, @options)
      self.cred_of_answer
      self.end_session?
    end
  end
  
end