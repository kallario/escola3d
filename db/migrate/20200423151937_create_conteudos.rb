class CreateConteudos < ActiveRecord::Migration[5.0]
  def change
    create_table :conteudos do |t|
      t.references :aula, foreign_key: true
      t.string :titulo
      t.text :descricao
      t.string :url

      t.timestamps
    end
  end
end
