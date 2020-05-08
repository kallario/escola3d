class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:edit, :update, :destroy]

  # GET /setores
  # GET /setores.json
  def index
    @usuarios = Usuario.all.order('nome_completo').page params[:page]
    @usuarios = Usuario.where('aprovado = ?', params[:aprovado]).order('nome_completo').page params[:page] if params[:aprovado].present?
  end

  # GET /setores/1/edit
  def edit
  end

  def autorizar
    @usuario = Usuario.find(params[:usuario_id])
    respond_to do |format|
      if @usuario.update(aprovado: true)
        format.html { redirect_to usuarios_path, notice: 'Usuário Aprovado com sucesso.' }
        format.json { render :index, status: :ok, location: @usuario }
      else
        format.html { redirect_to usuarios_path, notice: 'Erro ao aprovar o Usuário.' }
        format.json { render :index, status: :ok, location: @usuario }
      end        
    end
  end

  # PATCH/PUT /setores/1
  # PATCH/PUT /setores/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        AdminMailer.usuario_autorizado(@usuario).deliver
        format.html { redirect_to usuarios_path, notice: 'Usuário Atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setores/1
  # DELETE /setores/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuário excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit!
    end
end
