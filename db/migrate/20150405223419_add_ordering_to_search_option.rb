class AddOrderingToSearchOption < ActiveRecord::Migration
  def change
    add_column :search_options, :ordering, :string
  end
end
