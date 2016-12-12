json.extract! doctor, :id, :name, :email, :password, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)