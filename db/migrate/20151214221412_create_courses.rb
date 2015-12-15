class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :nombre_curso
      t.references :area, index: true

      t.timestamps
    end
  end
end
