class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string  :owner_id
      t.string  :name
      t.string  :cuisine
      t.string  :address
      t.string  :city
      t.string  :state
      t.integer :zip

      t.timestamps(null:false)
    end
    add_index(:restaurants, [:name, :address, :city], unique: true)
  end
end
