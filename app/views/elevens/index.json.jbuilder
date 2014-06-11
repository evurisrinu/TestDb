json.array!(@elevens) do |eleven|
  json.extract! eleven, :id, :name
  json.url eleven_url(eleven, format: :json)
end
