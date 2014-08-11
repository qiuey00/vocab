class CreateVocabQuestions < ActiveRecord::Migration
  def change
    create_table :vocab_questions do |t|
      t.references :game
      t.integer    :player_answer

      t.timestamps
    end
  
  end
  def correct_word
    answers.where(is_correct_answer:true).first
  end

  def incorrect_words
    answers.where(is_correct_answer.false).reorder(:word_location)
  end
end
