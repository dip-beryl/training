class ExampleReferenceForeign < ActiveRecord::Migration[7.0]
  def change
    
    add_reference :temp_books, :students#, foreign_key: true
    remove_reference :issued_books, :students#, foreign_key: true, index: false

    create_table :issued_books, :student_id, :string
    add_foreign_key :issued_books, :students
    
    add_foreign_key :temp_books, :books, column: :isbn_book, primary_key: :isbn
    
    remove_foreign_key :issued_books, :students
    remove_foreign_key :temp_books, column: :isbn_book

  end
end
