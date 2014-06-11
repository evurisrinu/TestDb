json.array!(@twentyfives) do |twentyfife|
  json.extract! twentyfife, :id, :name
  json.url twentyfife_url(twentyfife, format: :json)
end
