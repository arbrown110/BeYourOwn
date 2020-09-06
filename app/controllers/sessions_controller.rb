class SessionsController < ApplicationController

    def home
    end

    def delete
     session.clear
     redirect_to root_path
    end

    def create
     user = User.find_by(username: params[:user][:username])
     if user && user.authentication(params[:user][:username])
         session[:user_id] = @user.id
         redirect_to user_path(user)
     else
         flash[:message] = "Wrong login, try agan"
         redirect_to login_path
     end    
    end

    def new
    end

end
