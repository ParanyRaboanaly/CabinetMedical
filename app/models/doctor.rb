class Doctor < ApplicationRecord
	has_many :appointments
	has_many :speciality_docs
	has_many :patients, through: :appointments
	has_many :specialities, through: :speciality_docs
	belongs_to :citie
end
