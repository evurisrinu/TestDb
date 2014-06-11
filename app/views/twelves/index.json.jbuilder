json.array!(@twelves) do |twelf|
  json.extract! twelf, :id, :name
  json.url twelf_url(twelf, format: :json)
end
