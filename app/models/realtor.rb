class Realtor < ActiveRecord::Base
  has_many :reviews
  
  def self.search(search)
    where("lower(college) LIKE ? OR lower(name) LIKE ?", "%#{search.downcase}%","%#{search.downcase}%" )
  end

end
