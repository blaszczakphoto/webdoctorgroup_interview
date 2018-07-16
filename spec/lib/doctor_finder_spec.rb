require 'spec_helper'
require 'doctor_finder'

RSpec.describe DoctorFinder do
  it 'returns all available doctors for Thursday' do
    doctor_finder = DoctorFinder.new('spec/support/doctors.csv')
    actual_result = doctor_finder.find_doctor('Thursday')
    expected_result = ['Dr. Adamski']
    expect(actual_result).to eq(expected_result)
  end

  it 'returns all available doctors for Monday' do
    doctor_finder = DoctorFinder.new('spec/support/doctors.csv')
    actual_result = doctor_finder.find_doctor('Monday')
    expected_result = ['Dr. Kim', 'Dr. May']
    expect(actual_result).to eq(expected_result)
  end
end
