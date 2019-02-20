class AddAllAttributesToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :image_url, :string
    add_column :restaurants, :address, :string
    add_column :restaurants, :phone, :string
    add_column :restaurants, :lat, :float
    add_column :restaurants, :lng, :float
  end
end
