class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :text
      t.references :user, index: true
      t.references :scotch, index: true
      t.integer :score

      t.timestamps null: false
    end
  end
end
