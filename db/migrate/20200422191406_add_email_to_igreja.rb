class AddEmailToIgreja < ActiveRecord::Migration[5.0]
  def change
    add_column :igrejas, :email, :string
  end
end
