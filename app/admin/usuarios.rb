ActiveAdmin.register Usuario do
  permit_params :email, :nome_completo, :endereco, :bairro, :cidade, :estado, :nascimento, :telefone, :categoria, :turma_id

  index do
    selectable_column
    id_column
	  column :nome_completo
  	column :email
  	column :nascimento
  	column :telefone
    actions
  end

  filter :nome_completo
  filter :email

  form do |f|
    f.inputs do
      f.input :turma_id, as: :select, collection: Turma.all.map{|u| [u.codigo_turma, u.id]}
      f.input :nome_completo
      f.input :endereco
      f.input :bairro
      f.input :cidade
      f.input :estado
      f.input :nascimento
      f.input :telefone
      f.input :email
    end
    f.actions
  end

end