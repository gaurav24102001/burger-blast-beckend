class Api::V1::UsersController < ApplicationController
  
  
  def index
    @users = User.all

    render json: @users
  end

 
  def show
   
    user_json = UserSerializer.new(@user).to_json
    render json: user_json

   
  end

  
  def signin
  user = User.create(name: params[:user][:name],
                     email: params[:user][:email], 
                     username: params[:user][:username],
                     password: params[:user][:password],
                     password_confirmation: params[:user][:password],
                    )

  if user.save
    session[:user_id] = user.id
    render json: {
      status:"created",
      user: user
    }
  
else
  render json: {
    status: "not created"
  }

end
end

 

  

  private

    def set_user
      @user = User.find(params[:id])
    end


    def user_params
      params.require(:user).permit(:name,:email, :username, :password)
    end
end
