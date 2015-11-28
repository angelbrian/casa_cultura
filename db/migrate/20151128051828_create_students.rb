class CreateStudents < ActiveRecord::Migration
  def change
      create_table :students, id: false do |t|
          t.string :curp, primary_key: true, limit: 18, null: false
          t.string :nombre, limit: 30, null: false 
          t.string :apellido_paterno, limit: 30, null: false 
          t.string :apellido_materno, limit: 30
          t.date :fecha_registro, null: false 
          t.string :telefono, limit: 15, null: false 
          t.string :direccion, limit: 50, null: false  
          t.string :tipo_sangre, limit: 4, null: false 
          t.string :nombre_tutor, limit: 50, null: false 
          t.string :telefono_tutor, limit: 15, null: false
          t.string :sexo, limit: 1, null: false

      t.timestamps
    end
  end
end
