class RemoveIsbnFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :isbn, :string
  end
end
