json.array!(@user_memberships) do |user_membership|
  json.extract! user_membership, 
  json.url user_membership_url(user_membership, format: :json)
end
