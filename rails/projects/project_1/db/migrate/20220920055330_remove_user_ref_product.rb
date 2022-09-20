class RemoveUserRefProduct < ActiveRecord::Migration[7.0]
  def change
    remove_reference :products, :user, foreign_key: true, index: false
  end
end
