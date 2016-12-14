json.extract! patient, :id, :name, :email, :password, :doctor_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)