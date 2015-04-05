class AddExplanationToSearchOption < ActiveRecord::Migration
  def change
    add_column :search_options, :explanation, :text
  end
end
