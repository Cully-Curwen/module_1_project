class GameMaster

  def initialize(user)
    # creates a new game session pulling in user
    @session = Test.maximum(:session) + 1
    @user = user
    @count = 1
    @prompt = TTY::Prompt.new
  end
  
  def generate_question
    # pull from db a question, creates an array of answer options and creates a test instance in the db
    @question = Question.find_by(id: rand(Question.maximum(:id)))
    options_collection = [@question.correct_answer, @question.incorrect_answer_01, @question.incorrect_answer_02, @question.incorrect_answer_03]
    @options = options_collection.sample(4)
    @test = Test.create(user_id: @user.id, question_id: @question.id, session: @session)
  end

  def cred_of_answer
    # assigns a true or false statment depending if user got the answer for the question correct, and pushes to db
    @answer == @question["correct_answer"] ? @test.credibility = true : @test.credibility = false
    @test.save
  end

  def end_session?
    if @test.credibility
      @live = true
      @count += 1
      puts "Congratulations, you got that right!"
    else
      @live = false
      puts "You got that wrong!"
      puts "*" * 20
      puts "Now Go!!!"
    end
  end

  def session
    @live = true
    while @live
      puts "*" * 20
      puts "Question number #{@count} is:"
      self.generate_question
      @answer = @prompt.select(@question.question, @options)
      self.cred_of_answer
      self.end_session?
    end
  end

end