class CreateCustomersAndAccounts < ActiveRecord::Migration[7.0]
  def change
    
    create_table :customers do |t|
      t.string :name
      t.string :contact

      t.timestamps
    end

    create_table :accounts do |t|
      t.string :variant
      t.string :amount
      t.references :customer, index: {unique: true}, foreign_key: true


      t.timestamps
    end

  end
end
