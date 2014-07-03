class ApiController < ApplicationController
  respond_to :html

  def explore
    @user = predicsis_access_token.get("http://api.predicsis.io/users/#{params[:api]}").parsed
    binding.pry
    render template: 'home/profile'
  end
end
