class WordsController < ApplicationController
  def new
    @word = Word.new
  end
  
  def show
    @word = Word.find(params[:id])
  end

  def create
    @word = Word.new(word_params)

    if @word.save
      redirect_to @word
    else
      render 'new'
  end

  def index
    @words = Word.all
  end

  private
  def word_params
    params.require(:word).permit(:word, :definition, :part_of_speech)
  end

end
