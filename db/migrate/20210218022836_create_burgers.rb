class CreateBurgers < ActiveRecord::Migration[6.0]
  def change
    create_table :burgers do |t|
      t.string :name
      t.float :price
      t.string :image
      t.string :status
      t.string :description
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
