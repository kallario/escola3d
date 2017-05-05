class CreateNiveis < ActiveRecord::Migration[5.0]
  def change
    create_table :niveis do |t|
      t.integer :dons, limit: 2
      t.integer :tipo, limit: 1
      t.integer :nivel, limit: 3
      t.integer :valor, limit: 3

      t.timestamps
    end
  end
end
