ActiveAdmin.register Conteudo do
menu parent: "Cursos"
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :aula_id, :titulo, :descricao, :url, :arquivos
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form do |f|
	f.inputs do
    f.input :aula_id, as: :select, collection: Aula.all.map{|u| [u.titulo, u.id]}
    f.input :titulo
    f.input :descricao
    f.input :url
    f.inputs "Anexar Arquivo", :multipart => true do 
  		f.input :arquivos, as: :file
	end
end
f.actions
end

end
