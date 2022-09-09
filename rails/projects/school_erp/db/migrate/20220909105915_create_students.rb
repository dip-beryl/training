class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.date :dob
      t.string :contact
      t.integer :status

      t.timestamps
    end
  end
end
