class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    user = User.create(user_params)
    if user
      redirect_to users_path
    else
      # re-show with errors
      flash[:error] = "Please fill all required fields"
    end
  end

  def update
    #fit to new form
  end

  private 
    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name, :color)
    end
end
