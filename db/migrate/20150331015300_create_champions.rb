class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.integer :champion_key
      t.string :name
      t.string :title
      t.string :image
      t.string :sprite

      t.timestamps null: false
    end
  end
end
