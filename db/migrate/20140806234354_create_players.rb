class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :Players do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false

      t.timestamps
    end
     add_index "players", ["first_name", "last_name"],unique: true
  end
end
