class AddOwnerToRole < ActiveRecord::Migration[5.0]
  def change
    add_column :roles, :is_owner, :boolean
  end
end
