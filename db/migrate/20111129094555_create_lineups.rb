class CreateLineups < ActiveRecord::Migration
  def change
    create_table :lineups do |t|
      t.string :name
      t.integer :formation_id

      t.timestamps
    end
  end
end
