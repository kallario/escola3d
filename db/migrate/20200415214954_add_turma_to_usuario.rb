class AddTurmaToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_reference :usuarios, :turma, foreign_key: true
  end
end
