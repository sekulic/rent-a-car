json.array!(@cars) do |car|
  json.extract! car, :id, :name, :description, :comfort_type, :available
  json.url car_url(car, format: :json)
end
