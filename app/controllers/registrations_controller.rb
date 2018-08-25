class RegistrationsController < Devise::RegistrationsController
  protected
    def after_sign_up_path_for(user)
      list_path
    end

    def after_sign_in_path_for(user)
      list_path
    end

  private 
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :color)
    end
    # def account_update_params
    #   params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
    # end
end
