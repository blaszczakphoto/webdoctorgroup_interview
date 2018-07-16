require 'csv'

class DoctorFinder
  def initialize(doctors_source)
    @doctors_source = doctors_source
  end

  def find_doctor(day)
    available_doctors = []
    csv_options = { headers: true }
    CSV.foreach(@doctors_source, csv_options) do |doctor_data|
      is_doctor_available_on_requsted_day = doctor_data[day] == 'ON'
      available_doctors.push(doctor_data['Doctor Name']) if is_doctor_available_on_requsted_day
    end
    available_doctors
  end
end
