json.array!(@peers) do |peer|
  json.extract! peer, :id
  json.url peer_url(peer, format: :json)
end
