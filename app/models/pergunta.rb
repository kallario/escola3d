class Pergunta < ApplicationRecord
  belongs_to :grupo
  has_many :caderno_respostas
end
