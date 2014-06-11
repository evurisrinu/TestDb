json.array!(@fours) do |four|
  json.extract! four, :id, :name
  json.url four_url(four, format: :json)
end
