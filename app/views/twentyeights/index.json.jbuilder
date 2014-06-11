json.array!(@twentyeights) do |twentyeight|
  json.extract! twentyeight, :id, :name
  json.url twentyeight_url(twentyeight, format: :json)
end
