class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string  :address
      t.integer :realtor_id


      t.timestamps null: false
    end
  end
end
