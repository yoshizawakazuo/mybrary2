class ApplicationController < ActionController::Base
  # before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, 
                                                      :first_name, 
                                                      :last_name, 
                                                      :first_name_kana, 
                                                      :last_name_kana, 
                                                      :email, 
                                                      :password,
                                                      :category_id,
                                                      :second_category_id])
  end


  # private

  # def basic_auth
  #   authenticate_or_request_with_http_basic do |username, password|
  #     username == 'admin' && password == '2222'
  #   end
  # end

end