class AddRoleToAdminUser < ActiveRecord::Migration[6.0]
  def up
    add_column :admin_users, :role, :string, null: false, default: 'editor'
  end
  
  def down
    remove_column :admin_users, :role
  end
end
