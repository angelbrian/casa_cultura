json.array!(@groups) do |group|
  json.extract! group, :id, :clave_grupo, :taller_id, :hora_inicio, :hora_fin, :nivel, :dias, :semestre, :fecha_inicio, :fecha_fin, :cupo
  json.url group_url(group, format: :json)
end
