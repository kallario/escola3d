class CreateGrupos < ActiveRecord::Migration[5.0]
  def change
    create_table :grupos do |t|
      t.string :titulo_grupo

      t.timestamps
    end
  end
end
