class CreateVocabQuestions < ActiveRecord::Migration
  def change
    create_table :vocab_questions do |t|
      t.integer :game_id
      t.integer :correct_answer
      t.string :word_location
      t.string :player_answer

      t.timestamps
    end

  end
end
