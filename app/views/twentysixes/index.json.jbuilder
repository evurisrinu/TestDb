json.array!(@twentysixes) do |twentysix|
  json.extract! twentysix, :id, :name
  json.url twentysix_url(twentysix, format: :json)
end
