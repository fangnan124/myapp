json.array!(@newsinfos) do |newsinfo|
  json.extract! newsinfo, :id, :title, :content, :publisher, :published
  json.url newsinfo_url(newsinfo, format: :json)
end
