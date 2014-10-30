json.array!(@scotches) do |scotch|
  json.extract! scotch, :id, :name, :distiller, :affiliate_price, :affiliate_name, :affiliate_url, :story
  json.url scotch_url(scotch, format: :json)
end
