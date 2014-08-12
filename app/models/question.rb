class Question < ActiveRecord::Base
  belongs_to :game
  has_many   :answers

  validates_presence_of :game

  def correct_word
    answers.where(is_correct_answer: true).first
  end

  def incorrect_words
    answers.where(is_correct_answer: false).reorder(:word_location)
  end
end
