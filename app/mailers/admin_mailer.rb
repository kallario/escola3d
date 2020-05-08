class AdminMailer < ApplicationMailer

  default from: "admin@soumaisigreja.com"

  def novo_usuario(pessoa, email)
    @pessoa = pessoa
    @email = email
    @turma_inicio = @pessoa.turma.data_inicio.strftime('%d/%m/%Y')

    mail to: @email, subject: 'Bem-vindo a ' +  @pessoa.turma.curso.titulo
    
  end  

end