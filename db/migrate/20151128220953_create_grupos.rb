class CreateGrupos < ActiveRecord::Migration
  def change
      create_table :grupos, id: false  do |t|
          t.string :id_grupo, primary_key: true, null: false
          t.references :taller, index: true
          t.time :hora_inicio
          t.time :hora_fin
          t.string :nivel
          t.string :dias
          t.string :semestre
          t.date :fecha_inicio
          t.date :fecha_fin
          t.integer :cupo

      t.timestamps
    end
  end
end
