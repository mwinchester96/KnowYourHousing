class Realtor < ActiveRecord::Base
  has_many :reviews
  
  def self.search(search)
    where("college LIKE ?", "%#{search}%")
  end

end
