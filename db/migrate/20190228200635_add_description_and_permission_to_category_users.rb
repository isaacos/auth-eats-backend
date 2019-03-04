class AddDescriptionAndPermissionToCategoryUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :category_users, :description, :text
    add_column :category_users, :permission, :boolean
  end
end
