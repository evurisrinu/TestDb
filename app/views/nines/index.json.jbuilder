json.array!(@nines) do |nine|
  json.extract! nine, :id, :name
  json.url nine_url(nine, format: :json)
end
