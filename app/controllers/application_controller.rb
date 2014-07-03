class ApplicationController < ActionController::Base
  protect_from_forgery

  def predicsis_oauth_client
    @client ||= OAuth2::Client.new(PREDICSIS_APP_ID, PREDICSIS_APP_SECRET, :site => PREDICSIS_APP_URL)
  end

  def predicsis_access_token
    @token ||= OAuth2::AccessToken.new(predicsis_oauth_client, current_user.predicsis_access_token) if current_user
  end
end
