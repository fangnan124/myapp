json.array!(@newses) do |newse|
  json.extract! newse, :id, :title, :content
  json.url newse_url(newse, format: :json)
end
