class CreateRealtors < ActiveRecord::Migration
  def change
    create_table :realtors do |t|
      t.string :name
      t.string :address
      t.string :college
      t.string :realtor_url

      t.timestamps null: false
    end
  end
end
