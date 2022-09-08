class AddLockVersionToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :lock_version, :integer
  end
end
