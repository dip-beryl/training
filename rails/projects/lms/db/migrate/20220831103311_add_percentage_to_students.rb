class AddPercentageToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :percentage, :decimal, precision: 5, scale: 2
  end
end
