class CreateCadernoRespostas < ActiveRecord::Migration[5.0]
  def change
    create_table :caderno_respostas do |t|
      t.references :usuario, foreign_key: true
      t.references :pergunta, foreign_key: true
      t.integer :resposta, limit: 1

      t.timestamps
    end
  end
end
