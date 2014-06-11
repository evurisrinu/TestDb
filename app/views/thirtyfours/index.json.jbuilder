json.array!(@thirtyfours) do |thirtyfour|
  json.extract! thirtyfour, :id, :name
  json.url thirtyfour_url(thirtyfour, format: :json)
end
