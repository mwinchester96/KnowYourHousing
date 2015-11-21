class Realtor < ActiveRecord::Base
  has_many :reviews
  
  def self.search(search)
    where("lower(college) LIKE ?", "%#{search.downcase}%")
  end

end
