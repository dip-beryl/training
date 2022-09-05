class CreateAuthorsAndBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end

    create_table :blogs do |t|
      t.string :name
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
