json.array!(@twenties) do |twenty|
  json.extract! twenty, :id, :name
  json.url twenty_url(twenty, format: :json)
end
