class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nationality
      t.string :password
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
