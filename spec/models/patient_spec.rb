require 'rails_helper'

RSpec.describe Patient, type: :model do
  it "stores new patient record" do
    d = Doctor.create!(name: "doctor", email: "d@x.y", password: "password")
    p = Patient.create!(name: "patient", email: "p@x.y", password: "password", doctor: d)
    expect(p.name).to eq "patient"
  end
  it "links correct doctor" do
    d = Doctor.create!(name: "doctor", email: "d@x.y", password: "password")
    p = Patient.create!(name: "patient", email: "p@x.y", password: "password", doctor: d)
    expect(p.doctor.name).to eq "doctor"
  end
  it "links correct doctor2" do
    d = Doctor.create!(name: "doctor", email: "d@x.y", password: "password")
    p = Patient.create!(name: "patient", email: "p@x.y", password: "password", doctor: d)
    expect(p.doctor.email).to eq "d@x.y"
  end
end
