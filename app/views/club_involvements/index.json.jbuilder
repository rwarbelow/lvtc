json.array!(@club_involvements) do |club_involvement|
  json.extract! club_involvement, 
  json.url club_involvement_url(club_involvement, format: :json)
end
