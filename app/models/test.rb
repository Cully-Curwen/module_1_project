class Test < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  # attr_accessor :credibility

  validates :session, presence: true

  @prompt = TTY::Prompt.new

  # def self.produce
  #   session_new = Test.maximum(:session) + 1 
  #   rand_id = rand(Question.maximum(:id))
  #   question = Question.find_by(id: rand_id)
  #   q_collection = [question["correct_answer"], question["incorrect_answer_01"], question["incorrect_answer_02"], question["incorrect_answer_03"]]
  #   q_random = q_collection.sample(4)

  #   test = Test.create(user_id: 1, question_id: rand_id, session: session_new)
  #   answer = @prompt.select(question.question,q_random)
  #   if answer == question["correct_answer"]
  #     test.credibility = true
  #   else
  #     test.credibility = false
  #   end
    
  #   correct = test.credibility
  # end

end
    
