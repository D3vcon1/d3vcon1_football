class CreateFormations < ActiveRecord::Migration
  def change
    create_table :formations do |t|
      t.string :name
      t.integer :def
      t.integer :mid
      t.integer :fwd

      t.timestamps
    end
  end
end
