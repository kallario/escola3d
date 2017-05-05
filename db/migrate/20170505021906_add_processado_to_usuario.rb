class AddProcessadoToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :processado, :integer, limit: 1, default: 0
  end
end
