json.array!(@thirtysixes) do |thirtysix|
  json.extract! thirtysix, :id, :name
  json.url thirtysix_url(thirtysix, format: :json)
end
