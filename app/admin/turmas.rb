ActiveAdmin.register Turma do

menu parent: "Cursos"	
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :codigo_turma, :data_inicio, :data_termino, :data_formatura, :aberta, :questionario, :curso_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

# -- Form -----------------------------------------------------------

aberta = [
  ['Sim', 0, checked: true],
  ['Não', 0]
]

  form do |f|
  	f.inputs do
	    f.input :curso_id, as: :select, collection: Curso.all.map{|u| [u.titulo, u.id]}
	    f.input :codigo_turma
	    f.input :data_inicio
	    f.input :data_termino
	    f.input :data_formatura
	    f.input :aberta, as: :radio, collection: aberta
	    f.input :questionario
	end
	f.actions
  end

end
