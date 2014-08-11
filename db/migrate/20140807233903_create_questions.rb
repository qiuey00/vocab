class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :game
      t.integer    :player_answer

      t.timestamps
    end
  
  end
end
