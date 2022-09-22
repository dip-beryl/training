class AddNameToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :first_name, :string, null: false
    add_column :admins, :last_name, :string, null: false
    add_column :admins, :contact, :string, null: false
  end
end
