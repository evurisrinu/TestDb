json.array!(@eights) do |eight|
  json.extract! eight, :id, :name
  json.url eight_url(eight, format: :json)
end
