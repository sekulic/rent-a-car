json.array!(@comfort_types) do |comfort_type|
  json.extract! comfort_type, :id, :name, :price
  json.url comfort_type_url(comfort_type, format: :json)
end
