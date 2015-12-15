json.array!(@courses) do |course|
  json.extract! course, :id, :nombre_curso, :area_id
  json.url course_url(course, format: :json)
end
