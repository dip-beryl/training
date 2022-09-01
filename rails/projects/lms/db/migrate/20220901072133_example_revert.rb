#require_relative '20220901054029_example_migration_two.rb'

class ExampleRevert < ActiveRecord::Migration[7.0]
  def change

    #revert ExampleMigrationTwo
    revert do
        # copy pasting code from ExampleMigrationTwo
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
    end

    create_table :revert_table do |t|
      t.string :my_name
      t.string :your_name
    end
  end
end
