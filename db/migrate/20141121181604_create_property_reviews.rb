class CreatePropertyReviews < ActiveRecord::Migration
  def change
    create_table :property_reviews do |t|
      t.integer :score
      t.integer :cost
      t.integer :location
      t.integer :condition
      t.integer :realtor_id
      t.integer :user_id
      t.string  :comments

      t.timestamps null: false
    end
  end
end
