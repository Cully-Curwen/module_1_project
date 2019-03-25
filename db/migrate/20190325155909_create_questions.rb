class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :type
      t.string :difficulty
      t.text :question
      t.string :correct_answer
      t.string :incorrect_answers
      t.timestamps
    end
  end
end
