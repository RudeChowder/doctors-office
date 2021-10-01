class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    @doctors = Doctor.all
    @patients = Patient.all
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      flash[:success] = "Appointment Created"
      redirect_to doctor_path(@appointment.doctor)
    else
      flash[:success] = "Appointment could not be created"
      render :new
    end
  end

private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :date, :notes)
  end
end