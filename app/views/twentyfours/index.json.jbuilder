json.array!(@twentyfours) do |twentyfour|
  json.extract! twentyfour, :id, :name
  json.url twentyfour_url(twentyfour, format: :json)
end
