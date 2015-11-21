class CreateDormReviews < ActiveRecord::Migration
  def change
    create_table :dorm_reviews do |t|
      t.integer :score
      t.integer :cost
      t.integer :location
      t.integer :condition
      t.integer :nightlife
      t.integer :bathrooms_per_hall
      t.integer :dorm_id
      t.integer :user_id
      t.string  :comments

      t.timestamps null: false
    end
  end
end
