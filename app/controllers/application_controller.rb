class ApplicationController < ActionController::Base
  # before_action :authenticate_technician!
  # before_action :authenticate_company!
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  #       def configure_permitted_parameters
  #           devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :age, :nationality, :work_allowed, :id_ausweis, :number_of_years_work_experiance]) 
  #           # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  #       end
end
