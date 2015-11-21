json.array!(@reviews) do |review|
  json.extract! dorm_review, :id, :score, :cost, :location, :condition, :nightlife, :bathrooms_per_hall, :comments, :created_at, :updated_at
  json.url dorm_review_url(dorm_review, format: :json)
end
