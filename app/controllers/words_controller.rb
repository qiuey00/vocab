class WordsController < ApplicationController
  def new
  end

  def create 
    @word = Word.new(word_params)

    @word.save
    redirect_to @word
  end

  def index
  end

  private
  def word_params
    params.require(:word).permit(:word, :definition, :part_of_speech)
  end

end
