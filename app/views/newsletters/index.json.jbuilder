json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, 
  json.url newsletter_url(newsletter, format: :json)
end
