class CreateScotches < ActiveRecord::Migration
  def change
    create_table :scotches do |t|
      t.string :name
      t.string :distiller
      t.string :affiliate_price
      t.string :affiliate_name
      t.string :affiliate_url
      t.text :story

      t.timestamps null: false
    end
  end
end
