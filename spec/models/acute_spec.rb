require 'rails_helper'

RSpec.describe Acute, type: :model do
  it "stores new acute record" do
    d = Doctor.create!(name: "doctork", email: "d@x.y", password: "password")
    p = Patient.create!(name: "patient", email: "p@x.y", password: "password", doctor: d)
    a = Acute.create!(patient: p, nasal_congestion: 1, nasal_drainage: 1, facial_pain_or_headaches: 1, loss_of_sense_of_smell: 1, duration: 4, better_or_worse: -1, emergency_symptoms: true)
    expect(a.nasal_drainage).to eq 1
  end
  it "associations work well" do
    d = Doctor.create!(name: "doctork", email: "d@x.y", password: "password")
    p = Patient.create!(name: "patient", email: "p@x.y", password: "password", doctor: d)
    a = Acute.create!(patient: p, nasal_congestion: 1, nasal_drainage: 1, facial_pain_or_headaches: 1, loss_of_sense_of_smell: 1, duration: 4, better_or_worse: -1, emergency_symptoms: true)
    expect(a.patient.email).to eq "p@x.y"
  end
  it "answer is null when the acute record is simply created" do
    d = Doctor.create!(name: "doctork", email: "d@x.y", password: "password")
    p = Patient.create!(name: "patient", email: "p@x.y", password: "password", doctor: d)
    a = Acute.create!(patient: p, nasal_congestion: 1, nasal_drainage: 1, facial_pain_or_headaches: 1, loss_of_sense_of_smell: 1, duration: 4, better_or_worse: -1, emergency_symptoms: true)
    expect(a.answer).to eq nil
  end
end
