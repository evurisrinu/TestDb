json.array!(@thirteens) do |thirteen|
  json.extract! thirteen, :id, :name
  json.url thirteen_url(thirteen, format: :json)
end
