class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :difficulty
      t.text :question
      t.string :correct_answer
      t.string :incorrect_answer_01
      t.string :incorrect_answer_02
      t.string :incorrect_answer_03
      t.timestamps
    end
  end
end
