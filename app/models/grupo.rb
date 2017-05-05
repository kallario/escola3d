class Grupo < ApplicationRecord
  has_many :perguntas
  has_many :respostas
end
