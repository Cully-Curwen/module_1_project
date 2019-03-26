class Test < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :session, presence: true

  def self.produce(user)
    session_new = Test.maximum(session) + 1 
    rand_id = rand(Question.maximum(id))
    question = Question.find_by(id: rand_id)
    q_collection = [question["correct_answer"], question["incorrect_answer_01"], question["incorrect_answer_02"], question["incorrect_answer_03"]]
    q_random = q_collection.sample(4)
    test = Test.create(user_id: user.id, question_id: rand_id, session: session_new, credibility: null)
    prompt.select(question.question,q_random)
  end

end
    
