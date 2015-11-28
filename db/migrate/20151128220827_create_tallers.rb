class CreateTallers < ActiveRecord::Migration
  def change
      create_table :tallers, id: false do |t|
          t.string :id_taller, primary_key: true, null: false, limit: 5
          t.references :profesor, index: true
          t.references :curso, index: true

      t.timestamps
    end
  end
end
