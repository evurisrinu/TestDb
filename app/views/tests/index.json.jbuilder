json.array!(@tests) do |test|
  json.extract! test, :id, :name, :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten
  json.url test_url(test, format: :json)
end
