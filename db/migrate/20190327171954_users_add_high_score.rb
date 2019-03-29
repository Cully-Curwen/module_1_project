class UsersAddHighScore < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :high_score_session_id, :integer
  end
end