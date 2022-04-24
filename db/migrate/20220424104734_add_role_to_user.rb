class AddRoleToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :string, null: false
    add_index :users, :id
  end
end
