class CreateResultados < ActiveRecord::Migration[5.0]
  def change
    create_table :resultados do |t|
      t.references :usuario, foreign_key: true
      t.references :dom, foreign_key: true
      t.integer :tipo, limit: 1
      t.integer :valor, limit: 4

      t.timestamps
    end
  end
end
