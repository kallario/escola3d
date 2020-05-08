class AddSiglaToCurso < ActiveRecord::Migration[5.0]
  def change
    add_column :cursos, :sigla, :string
  end
end
