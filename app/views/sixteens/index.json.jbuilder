json.array!(@sixteens) do |sixteen|
  json.extract! sixteen, :id, :name
  json.url sixteen_url(sixteen, format: :json)
end
