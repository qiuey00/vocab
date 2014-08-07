class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :Player
      t.integer :AnswersCorrect
      t.integer :AnswersIncorrect
      t.timestamp :TimeBegin
      t.timestamp :TimeEnd

      t.timestamps
    end
  end
end
