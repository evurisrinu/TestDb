json.array!(@thirtynines) do |thirtynine|
  json.extract! thirtynine, :id, :name
  json.url thirtynine_url(thirtynine, format: :json)
end
