json.array!(@fourteens) do |fourteen|
  json.extract! fourteen, :id, :name
  json.url fourteen_url(fourteen, format: :json)
end
