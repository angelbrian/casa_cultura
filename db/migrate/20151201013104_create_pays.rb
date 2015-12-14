class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays do |t|
      t.string :tipo_pago

      t.timestamps
    end
  end
end
