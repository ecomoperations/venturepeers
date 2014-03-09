json.array!(@ventures) do |venture|
  json.extract! venture, :id
  json.url venture_url(venture, format: :json)
end
