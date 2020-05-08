class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :caderno_respostas
  belongs_to :turma

  after_create :send_admin_mail
  
  def send_admin_mail
    emails = ['admin@soumaisigreja.com', self.email]

    emails.each do |email|
      AdminMailer.novo_usuario(self, email).deliver
    end

  end

end
