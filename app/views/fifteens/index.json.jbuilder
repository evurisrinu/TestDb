json.array!(@fifteens) do |fifteen|
  json.extract! fifteen, :id, :name
  json.url fifteen_url(fifteen, format: :json)
end
