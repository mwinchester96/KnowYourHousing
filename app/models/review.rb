class Review < ActiveRecord::Base
  belongs_to :scotch
  belongs_to :user
end
