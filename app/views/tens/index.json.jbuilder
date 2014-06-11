json.array!(@tens) do |ten|
  json.extract! ten, :id, :name
  json.url ten_url(ten, format: :json)
end
