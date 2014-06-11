json.array!(@thirtyones) do |thirtyone|
  json.extract! thirtyone, :id, :name
  json.url thirtyone_url(thirtyone, format: :json)
end
