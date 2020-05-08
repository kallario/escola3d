class CadernoRespostasController < ApplicationController
  before_action :set_caderno_resposta, only: [:show, :edit, :update, :destroy]

  def index

    @usuario = Usuario.find(current_usuario.id)
    @turma = Turma.find(@usuario.turma_id)

    if @turma.questionario > 0 and @turma.questionario < 8
      @offset = (@turma.questionario - 1) * 30
    else
      redirect_to aguardando_path, notice: 'Questionário ainda não está liberado.'
      return
    end

    @caderno_respostas = CadernoResposta.where('usuario_id = ?',current_usuario.id).order(:pergunta_id).page(params[:page]).limit(30).offset(@offset)

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

    @usuario = Usuario.find(current_usuario.id)
    @turma = Turma.find(@usuario.turma_id)
    @questionario = @turma.questionario * 30      

    respond_to do |format|

        @pergunta = @caderno_resposta.pergunta

        if @caderno_resposta.update(caderno_resposta_params)
          format.html { redirect_to caderno_respostas_path, notice: 'Pergunta Respondida com sucesso.' }
        else
          format.html { render :edit }
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
