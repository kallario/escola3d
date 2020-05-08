class AddAbertaToTurma < ActiveRecord::Migration[5.0]
  def change
    add_column :turmas, :aberta, :integer, limit: 1
  end
end
