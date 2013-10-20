json.array!(@grand_prix_points) do |grand_prix_point|
  json.extract! grand_prix_point, 
  json.url grand_prix_point_url(grand_prix_point, format: :json)
end
