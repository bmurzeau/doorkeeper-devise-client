class ApiController < ApplicationController
  respond_to :html

  def explore
    @user = predicsis_access_token.get("http://localhost:3001/users/#{params[:api]}").parsed
    render template: 'home/profile'
  end
end
