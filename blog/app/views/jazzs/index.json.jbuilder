json.array!(@jazzs) do |jazz|
  json.extract! jazz, :id, :content, :title
  json.url jazz_url(jazz, format: :json)
end
