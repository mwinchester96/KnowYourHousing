class AddCommentsToReviews < ActiveRecord::Migration
  def self.up
    add_column :reviews, :comments, :string
  end

end
