json.array!(@students) do |student|
  json.extract! student, :id, :curp, :nombre, :apellido_paterno, :apellido_materno, :sexo, :fecha_de_nac, :direccion, :telefono, :fecha_de_registro, :tipo_de_sangre, :nombre_tutor, :telefono_tutor
  json.url student_url(student, format: :json)
end
