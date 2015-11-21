class ChangeColumnNameForPropertyId < ActiveRecord::Migration
  def self.up
    rename_column :property_reviews, :realtor_id, :property_id
  end

end
