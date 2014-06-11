json.array!(@threes) do |three|
  json.extract! three, :id, :name
  json.url three_url(three, format: :json)
end
