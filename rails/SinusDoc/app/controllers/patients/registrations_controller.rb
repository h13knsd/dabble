class Patients::RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:patient).permit(:name, :email, :doctor_id, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:patient).permit(:name, :email, :doctor_id, :password, :password_confirmation, :current_password)
  end
end
