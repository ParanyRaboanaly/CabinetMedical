class Citie < ApplicationRecord
	has_many :doctors
	has_many :patients
	has_many :appointments
end
