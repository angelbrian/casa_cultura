json.array!(@areas) do |area|
  json.extract! area, :id, :tipo_area
  json.url area_url(area, format: :json)
end
