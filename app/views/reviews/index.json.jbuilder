json.array!(@reviews) do |review|
  json.extract! review, :id, :score, :affordability, :helpfulness, :accomodation, :favorite, :comments, :created_at, :updated_at
  json.url review_url(review, format: :json)
end
