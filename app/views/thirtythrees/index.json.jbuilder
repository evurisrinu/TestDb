json.array!(@thirtythrees) do |thirtythree|
  json.extract! thirtythree, :id, :name
  json.url thirtythree_url(thirtythree, format: :json)
end
