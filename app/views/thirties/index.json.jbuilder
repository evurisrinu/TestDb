json.array!(@thirties) do |thirty|
  json.extract! thirty, :id, :name
  json.url thirty_url(thirty, format: :json)
end
