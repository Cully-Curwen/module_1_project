class Test < ActiveRecord::Base

  def self.produce(user)
    session_new = Test.maximum(session) + 1 
    rand_id = rand(Question.maximum(id))
    Test.create(user_id: user.id, question_id: rand_id, session: session_new, credibility: null)
  end

end
    
