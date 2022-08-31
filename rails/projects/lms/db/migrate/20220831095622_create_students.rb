class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll_no
      t.string :course
      t.string :contact_no

      t.timestamps
    end
  end
end
