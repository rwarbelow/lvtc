json.array!(@user_events) do |user_event|
  json.extract! user_event, 
  json.url user_event_url(user_event, format: :json)
end
