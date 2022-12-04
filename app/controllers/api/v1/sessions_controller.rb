class Api::V1::SessionsController < ApplicationController
  def login
    @user = User.find_by(username: params[:user][:username])

    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      render json: {
        logged_in:true,
        user:@user

      }
    else
      render json: {
        error: "Invalid Credentials"
      }
    end
  end


  def loggedin?
    @current_user = current_user_finder
    if @current_user
      render json: {
        logged_in:true,
        user: @current_user
      }
    else
      render json:{
        logged_in:false,
      }
    end
  end


  def loggedout
    session.clear
    render json: {
      logged_out: true,
      status: 200
    }
  end

end