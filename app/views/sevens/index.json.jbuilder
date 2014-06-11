json.array!(@sevens) do |seven|
  json.extract! seven, :id, :name
  json.url seven_url(seven, format: :json)
end
