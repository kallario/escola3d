class AddAdminToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :admin, :integer, limit: 1
    add_column :usuarios, :data_escola, :date
  end
end
