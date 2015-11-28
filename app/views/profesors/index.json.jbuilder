json.array!(@profesors) do |profesor|
  json.extract! profesor, :id, :nombre_prof, :apellido_pat_prof, :apellido_mat_prof, :observaciones, :area_id
  json.url profesor_url(profesor, format: :json)
end
