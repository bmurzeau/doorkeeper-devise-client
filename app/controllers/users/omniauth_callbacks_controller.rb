class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def predicsis
    oauth_data = request.env["omniauth.auth"]
    @user = User.find_or_create_for_predicsis_oauth(oauth_data)
    @user.update_predicsis_credentials(oauth_data)
    @user.save

    sign_in_and_redirect @user
  end
end
