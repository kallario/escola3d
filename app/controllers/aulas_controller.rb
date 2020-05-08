class AulasController < ApplicationController
	def lista_disciplinas
		@aulas = Aula.where(curso_id: current_usuario.turma.curso.id).order(:sequencia)
	end
end