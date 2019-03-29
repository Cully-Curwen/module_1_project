class Session < ActiveRecord::Base

  belongs_to :users

  has_many :tests
  has_many :questions, through: :tests

end