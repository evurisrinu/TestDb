json.array!(@thirtyeights) do |thirtyeight|
  json.extract! thirtyeight, :id, :name
  json.url thirtyeight_url(thirtyeight, format: :json)
end
