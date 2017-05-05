class AddCategoriaToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :categoria, :integer, limit: 1, default: 1
  end
end
