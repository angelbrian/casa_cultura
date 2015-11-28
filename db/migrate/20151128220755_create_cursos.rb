class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nombre_curso
      t.references :area, index: true

      t.timestamps
    end
  end
end
