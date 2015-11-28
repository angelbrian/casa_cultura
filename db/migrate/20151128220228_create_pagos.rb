class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.string :tipo_pago

      t.timestamps
    end
  end
end
