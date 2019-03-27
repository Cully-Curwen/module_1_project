class UsersAddHsTimeHsSession < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :high_score_time, :integer
    add_column :users, :high_score_session, :integer
  end
end
