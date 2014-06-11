json.array!(@twentysevens) do |twentyseven|
  json.extract! twentyseven, :id, :name
  json.url twentyseven_url(twentyseven, format: :json)
end
