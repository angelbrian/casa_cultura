class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :tipo_area

      t.timestamps
    end
  end
end
