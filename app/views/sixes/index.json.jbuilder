json.array!(@sixes) do |six|
  json.extract! six, :id, :name
  json.url six_url(six, format: :json)
end
