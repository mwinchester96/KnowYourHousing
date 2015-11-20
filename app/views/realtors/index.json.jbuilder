json.array!(@realtors) do |realtor|
  json.extract! realtor, :id, :name, :address, :college, :realtor_url, :description
  json.url realtor_url(realtor, format: :json)
end
