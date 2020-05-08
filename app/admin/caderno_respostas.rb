ActiveAdmin.register CadernoResposta do
menu parent: "Dons"	
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#belongs_to :usuario

filter :usuario_id, as: :select, collection: proc{ Usuario.all.pluck :email, :id }, :label => 'Selecione o Usuário'
filter :pergunta_id

end
