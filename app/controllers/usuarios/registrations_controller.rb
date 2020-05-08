class Usuarios::RegistrationsController < Devise::RegistrationsController

	before_action :checa_turma, only: :create

	def checa_turma

	   if Turma.exists?(codigo_turma: params[:usuario][:codigo_turma])
		   valido = true
		   @turma = Turma.find_by(codigo_turma: params[:usuario][:codigo_turma])
		   params[:usuario][:turma_id] = @turma.id
	   else
	   	   valido = false
	   end

      if !valido
        redirect_to new_registration_path(resource_name), notice: 'Turma informada inválida!'
        return
      end
	end

  protected

  def update_resource(resource, params)
    if params[:current_password].blank?
      resource.update_without_password(params.except(:current_password))
    else
      resource.update_with_password(params)
    end
  end
end
