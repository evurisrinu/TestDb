json.array!(@fourties) do |fourty|
  json.extract! fourty, :id, :name
  json.url fourty_url(fourty, format: :json)
end
