class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :FirstName, null: false
      t.string :LastName, null: false

      t.timestamps
    end
     unique: true
  end
end
