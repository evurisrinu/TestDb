json.array!(@twentythrees) do |twentythree|
  json.extract! twentythree, :id, :name
  json.url twentythree_url(twentythree, format: :json)
end
