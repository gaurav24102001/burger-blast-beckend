class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.float :price
      t.string :image
      t.string :status
      t.string :description
      t.references :user
      t.references :restaurant
      t.timestamps
    end
  end
end
