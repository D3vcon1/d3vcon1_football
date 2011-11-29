class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :goalkeeping
      t.integer :passing
      t.integer :defense
      t.integer :goalscoring

      t.timestamps
    end
  end
end
