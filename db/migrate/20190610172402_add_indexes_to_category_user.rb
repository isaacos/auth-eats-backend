class AddIndexesToCategoryUser < ActiveRecord::Migration[5.2]
  def change
    add_index(:category_users, [:category_id, :user_id])
  end
end
