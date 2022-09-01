class AddStudentsRefToIssuedBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :issued_books, :students, null: false, foreign_key: true
  end
end
