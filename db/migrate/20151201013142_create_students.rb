class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :curp
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :sexo
      t.date :fecha_de_nac
      t.string :direccion
      t.string :telefono
      t.string :fecha_de_registro
      t.string :tipo_de_sangre
      t.string :nombre_tutor
      t.string :telefono_tutor

      t.timestamps
    end
  end
end
