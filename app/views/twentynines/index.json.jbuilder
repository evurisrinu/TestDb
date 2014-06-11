json.array!(@twentynines) do |twentynine|
  json.extract! twentynine, :id, :name
  json.url twentynine_url(twentynine, format: :json)
end
