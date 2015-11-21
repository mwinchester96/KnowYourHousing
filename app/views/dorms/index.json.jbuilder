json.array!(@realtors) do |realtor|
  json.extract! dorm, :id, :name, :address, :college, :created_at, :updated_at
  json.url dorm_url(dorm, format: :json)
end
