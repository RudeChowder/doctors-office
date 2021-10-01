class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  def appointments_by_patient(patient)
    appointments.where(patient: patient)
  end
end
