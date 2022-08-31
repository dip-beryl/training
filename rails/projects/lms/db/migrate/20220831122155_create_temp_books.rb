class CreateTempBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :temp_books do |t|
      t.string :name
      t.string :author
      t.integer :isbn

      t.timestamps
    end
  end
end
