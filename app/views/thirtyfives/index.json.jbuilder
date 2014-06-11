json.array!(@thirtyfives) do |thirtyfife|
  json.extract! thirtyfife, :id, :name
  json.url thirtyfife_url(thirtyfife, format: :json)
end
