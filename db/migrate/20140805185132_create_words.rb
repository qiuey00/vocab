class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word, null: false
      t.string :definition, null: false
      t.string :part_of_speech, null: false

      t.timestamps
    end
    add_index :words, :word, unique: true
  end
end
