class AddCodigoTurmaToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :codigo_turma, :string
  end
end
