class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
    # @appointments = doctor.appointments_by_patient(@patient)
  end
end
