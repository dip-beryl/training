class ExampleMigrationTwo < ActiveRecord::Migration[7.0]
  def change
      create_table :example_table do |t|
  
          t.string :name
          t.string :contact_no
          t.integer :marks
      end
  
      reversible do |dir|
          dir.up do
              execute <<-SQL
          
                  ALTER TABLE example_table ADD CONSTRAINT marks_check CHECK(marks < 100);
              
              SQL
          end

          dir.down do
              execute <<-SQL
                  ALTER TABLE example_table DROP CONSTRAINT marks_check CASCADE;

              SQL
          end
      end

      add_column :example_table, :dob, :datetime

  end
end