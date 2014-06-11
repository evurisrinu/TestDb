json.array!(@twentytwos) do |twentytwo|
  json.extract! twentytwo, :id, :name
  json.url twentytwo_url(twentytwo, format: :json)
end
