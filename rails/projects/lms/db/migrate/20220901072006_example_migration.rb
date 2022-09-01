class ExampleMigration < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :books, column_options: {null: true}, table_name: :issues do |t|
      t.index :student_id
      t.index :book_id
    end
  end
end
