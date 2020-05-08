class CreateAulas < ActiveRecord::Migration[5.0]
  def change
    create_table :aulas do |t|
      t.string :sequencia
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end
end
