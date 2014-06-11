json.array!(@thirtysevens) do |thirtyseven|
  json.extract! thirtyseven, :id, :name
  json.url thirtyseven_url(thirtyseven, format: :json)
end
