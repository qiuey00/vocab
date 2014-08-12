class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question
      t.references :word
      t.integer    :word_location
      t.boolean    :is_correct_answer

      t.timestamps
    end
  end
end
