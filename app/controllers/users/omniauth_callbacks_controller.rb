class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def oktaoauth
       @user = User.from_omniauth(request.env["omniauth.auth"])
       sign_in(@user)r
       redirect_to root_path
    end
  end