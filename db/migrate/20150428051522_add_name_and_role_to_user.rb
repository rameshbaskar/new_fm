class AddNameAndRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_column :users, :role, :string
  end
end
