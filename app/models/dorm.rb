class Dorm < ActiveRecord::Base
  has_many :dorm_reviews

  
  def self.search(search)
    where("lower(college) LIKE ?", "%#{search.downcase}%")
  end

end
