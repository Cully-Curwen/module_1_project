class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :session
      t.boolean :credibility
      t.timestamps
    end
  end
end
