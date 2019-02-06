class Specialitie < ApplicationRecord
	has_many :speciality_docs
	has_many :specialities, through: :speciality_docs
end
