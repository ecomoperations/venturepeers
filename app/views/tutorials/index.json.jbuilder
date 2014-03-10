json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :title, :functionality, :language, :body, :suggestion
  json.url tutorial_url(tutorial, format: :json)
end
