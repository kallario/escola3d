class CreatePerguntas < ActiveRecord::Migration[5.0]
  def change
    create_table :perguntas do |t|
      t.references :grupo, foreign_key: true
      t.text :titulo_pergunta

      t.timestamps
    end
  end
end
