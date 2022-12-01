class CreateBurgers < ActiveRecord::Migration[6.0]
  def change
    create_table :burgers do |t|
      t.string :name
      t.float :price
      t.string :image
      t.string :status
      t.string :description

      t.integer :burgertable_id
      t.string :burgertable_type

      t.timestamps
    end
    add_index :burgers, [:burgertable_type, :burgertable_id]
  end
end
