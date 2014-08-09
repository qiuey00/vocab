class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.integer :word_id
      t.integer :word_location
      t.boolean :is_correct_answer

      t.timestamps
    end
  end
end
