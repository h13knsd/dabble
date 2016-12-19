require 'rails_helper'

RSpec.describe Chronic, type: :model do
  it "inks to correct patient record" do
    d = Doctor.create!(name: "doctor", email: "d@x.y", password: "password")
    p = Patient.create!(name: "patient", email: "p@x.y", password: "password", doctor: d)
    c = Chronic.create!(patient: p, discomfort_score: 5)
    expect(c.patient.name).to eq "patient"
  end
  it "validity of stored data exists" do
    d = Doctor.create!(name: "doctor", email: "d@x.y", password: "password")
    p = Patient.create!(name: "patient", email: "p@x.y", password: "password", doctor: d)
    c = Chronic.create!(patient: p, discomfort_score: 5)
    expect(c.discomfort_score).to eq 5
  end
  it "all relationships work well" do
    d = Doctor.create!(name: "doctor", email: "d@x.y", password: "password")
    p = Patient.create!(name: "patient", email: "p@x.y", password: "password", doctor: d)
    c = Chronic.create!(patient: p, discomfort_score: 5)
    expect(c.patient.doctor.name).to eq "doctor"
  end
end
