class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :clave_taller
      t.references :profesor, index: true
      t.references :curso, index: true

      t.timestamps
    end
  end
end
