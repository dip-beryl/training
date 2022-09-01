class ExampleChangeTable < ActiveRecord::Migration[7.0]
  def change
    change_table :temp_books do |t|
      t.remove :name, :author
      t.string :book_name
      t.index :book_name
      t.rename :isbn, :isbn_book
    end
  end
end
