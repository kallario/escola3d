class CadernoResposta < ApplicationRecord
  belongs_to :usuario
  belongs_to :pergunta

end
