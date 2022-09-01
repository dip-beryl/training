class CreateIssuedBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :issued_books do |t|
      t.references :books, null: false, foreign_key: true

      t.timestamps
    end
  end
end
