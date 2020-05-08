class Conteudo < ApplicationRecord
  belongs_to :aula
  has_many_attached :arquivos
end
