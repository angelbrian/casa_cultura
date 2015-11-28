class CreateProfesors < ActiveRecord::Migration
  def change
      create_table :profesors do |t|
      t.string :nombre_prof
      t.string :apellido_pat_prof
      t.string :apellido_mat_prof
      t.text :observaciones
      t.references :area, index: true

      t.timestamps
    end
  end
end
