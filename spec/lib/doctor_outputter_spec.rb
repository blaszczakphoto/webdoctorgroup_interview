require 'spec_helper'
require 'doctor_outputter'

RSpec.describe DoctorOutputter do
  it 'outputs the the available doctors in the special format' do
    available_doctors = ['Dr. Kim', 'Dr. May']
    expected_output = "Dr. Kim is available\n" +
                      "Dr. May is available\n"

    expect { DoctorOutputter.call(available_doctors) }
      .to output(expected_output)
      .to_stdout
  end
end
