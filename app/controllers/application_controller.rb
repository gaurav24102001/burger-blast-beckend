class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

    include ::ActionController::Cookies
    def current_user_finder
      if session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
      end
    end
  
end
