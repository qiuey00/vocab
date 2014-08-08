class CreateIncorrectAnswers < ActiveRecord::Migration
  def change
    create_table :incorrect_answers do |t|
      t.integer :question_id
      t.integer :wrong_vocab_word
      t.string :word_location

      t.timestamps
    end
  end
end
