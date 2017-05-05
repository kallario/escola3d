class CadernoRespostasController < ApplicationController
  before_action :set_caderno_resposta, only: [:show, :edit, :update, :destroy]

  def index
    @caderno_respostas = CadernoResposta.where('usuario_id = ?',current_usuario).paginate(:page => params[:page]).order(:pergunta_id)
    if @caderno_respostas.count <= 0
      @perguntas = Pergunta.all
      @perguntas.each do |pergunta|
        @caderno = CadernoResposta.new(usuario_id: current_usuario.id, pergunta_id: pergunta.id)
        @caderno.save
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @caderno_resposta.update(caderno_resposta_params)
        format.html { redirect_to caderno_respostas_path, notice: 'Dupla was successfully updated.' }
        format.json { render :show, status: :ok, location: @caderno_resposta }
      else
        format.html { render :edit }
        format.json { render json: @caderno_resposta.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caderno_resposta
      @caderno_resposta = CadernoResposta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caderno_resposta_params
      params.require(:caderno_resposta).permit(:usuario_id, :pergunta_id, :resposta)
    end

end
