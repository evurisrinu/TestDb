json.array!(@ones) do |one|
  json.extract! one, :id, :name
  json.url one_url(one, format: :json)
end
