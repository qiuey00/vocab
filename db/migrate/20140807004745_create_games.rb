class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :player
      t.integer :answer_correct
      t.integer :answers_incorrect
      t.timestamp :time_begin
      t.timestamp :time_end

      t.timestamps
    end
  end
end
