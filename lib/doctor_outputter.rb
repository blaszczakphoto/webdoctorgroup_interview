class DoctorOutputter
  def self.call(available_doctors)
    formatted_doctors_list = available_doctors.map { |doctor_name| "#{doctor_name} is available" }
    puts formatted_doctors_list
  end
end
