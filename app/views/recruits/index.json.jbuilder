json.array!(@recruits) do |recruit|
  json.extract! recruit, :id, :job, :place, :recruitment, :salary, :increase, :application
  json.url recruit_url(recruit, format: :json)
end
