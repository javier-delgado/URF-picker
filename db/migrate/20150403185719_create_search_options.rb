class CreateSearchOptions < ActiveRecord::Migration
  def change
    create_table :search_options do |t|
      t.string :name
      t.string :associated_stat

      t.timestamps null: false
    end
  end
end
