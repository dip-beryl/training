class AddCategoryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :category, :string, array: true, default: []
  end
end
