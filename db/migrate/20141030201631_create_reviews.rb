class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :score
      t.boolean :had_it
      t.boolean :want_it
      t.boolean :favorite
      t.integer :scotch_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
