json.array!(@newses) do |news|
  json.extract! news, :id, :title, :content, :publisher, :published
  json.url news_url(news, format: :json)
end
