class CadernoResposta < ApplicationRecord
  belongs_to :usuario
  belongs_to :pergunta

  self.per_page = 45
end
