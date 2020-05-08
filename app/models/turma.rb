class Turma < ApplicationRecord
	has_many :usuarios
	belongs_to :curso
end
