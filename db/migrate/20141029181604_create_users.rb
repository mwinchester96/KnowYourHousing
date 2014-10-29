class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nick
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :fb_image_url
      t.string :fb_location
      t.integer :fb_uid

      t.index :fb_uid
      t.index :email

      t.timestamps null: false
    end
  end
end
