json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :nombre_prof, :apellido_pat_prof, :apellido_mat_prof, :observaciones, :area_id
  json.url teacher_url(teacher, format: :json)
end
