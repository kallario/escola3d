class CreateTurmas < ActiveRecord::Migration[5.0]
  def change
    create_table :turmas do |t|
      t.string :codigo_turma
      t.date :data_inicio
      t.date :data_termino
      t.date :data_formatura

      t.timestamps
    end
  end
end
