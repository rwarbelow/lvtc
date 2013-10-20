json.array!(@user_involvements) do |user_involvement|
  json.extract! user_involvement, 
  json.url user_involvement_url(user_involvement, format: :json)
end
