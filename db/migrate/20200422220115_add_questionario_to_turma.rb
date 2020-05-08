class AddQuestionarioToTurma < ActiveRecord::Migration[5.0]
  def change
    add_column :turmas, :questionario, :integer, limit: 1, default: 0
  end
end
