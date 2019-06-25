class ApplicationController < ActionController::Base

	before_action :authenticate_user!

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

		def configure_permitted_parameters
			
			devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email,:password,:password_confirmation,:first_name,:last_name,:company_id,:user_role_id,
										:start_date,:end_date,:monthly_charge,:notes,:image,:active)}

			devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email,:password,:password_confirmation,:first_name,:last_name,:company_id,:user_role_id,
										:start_date,:end_date,:monthly_charge,:notes,:image,:active, :current_password)}
		end
end
