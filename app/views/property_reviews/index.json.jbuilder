json.array!(@property_reviews) do |property_review|
  json.extract! property_review, :id, :score, :cost, :location, :condition, :property_id, :user_id, :comments
  json.url property_review_url(property_review, format: :json)
end
