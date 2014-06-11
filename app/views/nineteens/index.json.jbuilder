json.array!(@nineteens) do |nineteen|
  json.extract! nineteen, :id, :name
  json.url nineteen_url(nineteen, format: :json)
end
