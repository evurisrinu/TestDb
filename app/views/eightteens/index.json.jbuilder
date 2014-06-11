json.array!(@eightteens) do |eightteen|
  json.extract! eightteen, :id, :name
  json.url eightteen_url(eightteen, format: :json)
end
