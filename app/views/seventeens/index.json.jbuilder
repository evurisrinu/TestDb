json.array!(@seventeens) do |seventeen|
  json.extract! seventeen, :id, :name
  json.url seventeen_url(seventeen, format: :json)
end
