require 'rails_helper'

RSpec.describe Doctor, type: :model do
  it "stores new doc" do
    d = Doctor.create!(name: "doctor", email: "d@x.y", password: "password")
    expect(d.name).to eq "doctor"
  end
  it "initially list of patients is nil" do
    d = Doctor.create!(name: "doctor", email: "d@x.y", password: "password")
    expect(d.patient.size).to eq 0
  end
end
