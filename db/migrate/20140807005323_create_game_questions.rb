class CreateGameQuestions < ActiveRecord::Migration
  def change
    create_table :game_questions do |t|
      t.integer :question_id

      t.timestamps
    end
  end
end
