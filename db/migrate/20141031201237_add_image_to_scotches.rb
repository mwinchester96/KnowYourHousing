class AddImageToScotches < ActiveRecord::Migration
  def self.up
    add_column :realtors, :college, :string
  end

end
