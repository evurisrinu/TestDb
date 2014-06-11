json.array!(@twos) do |two|
  json.extract! two, :id, :name
  json.url two_url(two, format: :json)
end
