json.array!(@twentyones) do |twentyone|
  json.extract! twentyone, :id, :name
  json.url twentyone_url(twentyone, format: :json)
end
