json.array!(@business_descriptions) do |business_description|
  json.extract! business_description, :id, :field, :programming_language, :business
  json.url business_description_url(business_description, format: :json)
end
