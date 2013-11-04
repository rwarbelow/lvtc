json.array!(@announcements) do |announcement|
  json.extract! announcement, 
  json.url announcement_url(announcement, format: :json)
end
