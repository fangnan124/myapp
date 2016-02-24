json.array!(@business_results) do |business_result|
  json.extract! business_result, :id, :system_name, :content
  json.url business_result_url(business_result, format: :json)
end
