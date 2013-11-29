json.array!(@race_registrations) do |race_registration|
  json.extract! race_registration, 
  json.url race_registration_url(race_registration, format: :json)
end
