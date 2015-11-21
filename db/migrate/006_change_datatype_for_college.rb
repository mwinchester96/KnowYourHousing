class ChangeDatatypeForCollege < ActiveRecord::Migration
  def self.up
    change_table :dorms do |t|
      t.change :college, :string
    end
  end

end
