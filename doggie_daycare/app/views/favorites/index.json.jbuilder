json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :dob, :favorite_drink, :favorite_sport
  json.url favorite_url(favorite, format: :json)
end
