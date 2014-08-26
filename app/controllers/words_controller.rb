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
  end

  def index
    @words = Word.all
  end

  def update
    @word = Word.find(params[:id])
    if @word.update(word_params)
      redirect_to @word
    else
      render 'edit'
    end
  end

  def edit
    @word = Word.find(params[:id])
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to words_path
  end

  private
  def word_params
    params.require(:word).permit(:word, :definition, :part_of_speech)
  end

end
