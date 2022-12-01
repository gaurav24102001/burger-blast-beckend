class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.string :url
      t.references :burgertable, polymorphic: true
      
      t.timestamps
    end
  end
end
