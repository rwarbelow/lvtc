json.array!(@champion_series_points) do |champion_series_point|
  json.extract! champion_series_point, 
  json.url champion_series_point_url(champion_series_point, format: :json)
end
