json.array!(@thirtytwos) do |thirtytwo|
  json.extract! thirtytwo, :id, :name
  json.url thirtytwo_url(thirtytwo, format: :json)
end
