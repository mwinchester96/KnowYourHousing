class Property < ActiveRecord::Base
  has_many :property_reviews
  belongs_to :realtor

  def self.search(search)
    where("realtor_id = ?", "%#{search}%")
  end

end
