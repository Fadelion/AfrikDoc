class Doctor < ApplicationRecord
  belongs_to :city, optional: true
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :doctor_specialities
  has_many :specialities, through: :doctor_specialities
end
