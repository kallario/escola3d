class CreateIgrejas < ActiveRecord::Migration[5.0]
  def change
    create_table :igrejas do |t|
      t.string :nome
      t.string :subdomain

      t.timestamps
    end
  end
end
