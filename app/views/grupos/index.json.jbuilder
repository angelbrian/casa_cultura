json.array!(@grupos) do |grupo|
  json.extract! grupo, :id, :id_grupo, :taller_id, :hora_inicio, :hora_fin, :nivel, :dias, :semestre, :fecha_inicio, :fecha_fin, :cupo
  json.url grupo_url(grupo, format: :json)
end
