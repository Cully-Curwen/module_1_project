class Test < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :session, presence: true

  @prompt = TTY::Prompt.new

end
    
