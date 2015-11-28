json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :curp, :nombre, :apellido_paterno, :apellido_materno, :sexo, :direccion, :telefono, :fecha_de_registro, :tipo_de_sangre, :nombre_tutor, :telefono_tutor
  json.url alumno_url(alumno, format: :json)
end
