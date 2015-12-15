json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :clave_taller, :profesor_id, :curso_id
  json.url lesson_url(lesson, format: :json)
end
