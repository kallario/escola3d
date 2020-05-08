class ProcessarResultadosController < ApplicationController
  def validar
    if CadernoResposta.exists?(usuario_id: current_usuario.id)
      valido = true
      @caderno_resposta = CadernoResposta.where(usuario_id: current_usuario.id, resposta: nil).first
      respond_to do |format|
        if !@caderno_resposta.nil?
          format.html { redirect_to caderno_respostas_path, notice: 'Preencha todo o caderno para ver o seu Dom.' }
        else
          @usuario = Usuario.find(current_usuario.id)
          if @usuario.processado == 0
            format.html { redirect_to processar_processar_resultados_path }
          else
            format.html { redirect_to show_processar_resultados_path, notice: 'Carregando os dons' }
          end
        end
      end
    else
      valido = false
    end

    if !valido
      respond_to do |format|
        format.html { redirect_to caderno_respostas_path, notice: 'Preencha todo o caderno para ver o seu Dom.' }
        return
      end
    end    

  end

  def processar
    @dons = Dom.all
    @dons.each do |dom|

        val_1 = CadernoResposta.where(pergunta_id: dom.id, usuario_id: current_usuario.id).first
        val_2 = CadernoResposta.where(pergunta_id: dom.id + 30, usuario_id: current_usuario.id).first
        val_3 = CadernoResposta.where(pergunta_id: dom.id + 60, usuario_id: current_usuario.id).first
        val_4 = CadernoResposta.where(pergunta_id: dom.id + 90, usuario_id: current_usuario.id).first
        val_5 = CadernoResposta.where(pergunta_id: dom.id + 120, usuario_id: current_usuario.id).first
        val_6 = CadernoResposta.where(pergunta_id: dom.id + 150, usuario_id: current_usuario.id).first
        val_7 = CadernoResposta.where(pergunta_id: dom.id + 180, usuario_id: current_usuario.id).first


        a_total = val_1.resposta + val_2.resposta + val_3.resposta + val_4.resposta + val_5.resposta + val_6.resposta + val_7.resposta

        b_total = val_2.resposta + val_4.resposta + val_6.resposta

        val_9  = Nivel.where(dons: dom.id, tipo: 1, valor: a_total).first
        val_10 = Nivel.where(dons: dom.id, tipo: 2, valor: b_total).first

        @resultado = Resultado.new(usuario_id: current_usuario.id, dom_id: dom.id, tipo: 1, valor: val_9.nivel)
        @resultado.save

        @resultado = Resultado.new(usuario_id: current_usuario.id, dom_id: dom.id, tipo: 2, valor: val_10.nivel)
        @resultado.save

    end

    @usuario = Usuario.find(current_usuario.id)
    @usuario.update(processado: 1)
    @usuario.save

    redirect_to show_processar_resultados_path, notice: 'Processando os dons' and return

  end

  def show
    @resultados_manifestos = Resultado.where(usuario_id: current_usuario.id, tipo:1).order(valor: :desc).limit 5
    @resultados_latentes = DonsLatente.where(usuario_id: current_usuario.id).order(valor: :desc).limit 5
  end

end
