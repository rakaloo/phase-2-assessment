class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :author_id
      t.integer :restaurant_id
      t.integer :rating
      t.string  :content

      t.timestamps(null:false)
    end
  end
end
