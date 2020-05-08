class Curso < ApplicationRecord
	has_many :aulas
    has_many :turmas
end
