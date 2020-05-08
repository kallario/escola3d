class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_usuario!, except: [:welcome]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

 	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up,         keys: [:nome_completo, :endereco, :bairro, :cidade, :estado, :telefone, :nascimento, :email, :password, :password_confirmation, :turma_id, :codigo_turma])
		devise_parameter_sanitizer.permit(:account_update,  keys: [:nome_completo, :endereco, :bairro, :cidade, :estado, :telefone, :nascimento, :email, :password, :password_confirmation, :turma_id, :codigo_turma])
	end

end
