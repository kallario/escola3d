class CreateRespostas < ActiveRecord::Migration[5.0]
  def change
    create_table :respostas do |t|
      t.references :grupo, foreign_key: true
      t.string :resposta
      t.integer :peso, limit: 1

      t.timestamps
    end
  end
end
