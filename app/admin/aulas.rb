ActiveAdmin.register Aula do

menu parent: "Cursos"	
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :sequencia, :titulo, :descricao, :curso_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
# -- Form -----------------------------------------------------------
  form do |f|
  	f.inputs do
	    f.input :curso_id, as: :select, collection: Curso.all.map{|u| [u.titulo, u.id]}
	    f.input :sequencia
	    f.input :titulo
	    f.input :descricao
	end
	f.actions
  end

end
