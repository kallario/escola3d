class AddIndexToCadernoResposta < ActiveRecord::Migration[5.0]
  def change
    add_index :caderno_respostas, [:usuario_id, :pergunta_id], unique: true
  end
end
