class CallbacksController < Devise::OmniauthCallbacksController

    def github
        @user = User.from_omniauth(request.env["omniauth.auth"])
        if @user.persisted?
        sign_in_and_redirect @user
        else
        redirect_to new_user_registration_path
        end 
    end      
end

