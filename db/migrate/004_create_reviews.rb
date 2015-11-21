class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :score
      t.integer :affordability
      t.integer :helpfulness
      t.integer :accomodation
      t.integer :realtor_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
