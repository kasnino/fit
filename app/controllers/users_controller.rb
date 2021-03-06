class UsersController < ApplicationController
before_action :authenticate_user!, only: [:edit, :update]
before_action :check_authorization, only: [:edit, :update]
before_action :set_user, only: [:show, :edit, :update]

def show
	@user = User.find(params[:id])
  
end

def edit
end

 def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, alert: "Could not update, Please try again"
    end
  end


def followers
 redirect_to followers_user_path
end 

def following
 redirect_to following_user_path
end 
private 
 def check_authorization
      unless current_user.id == params[:id].to_i
        redirect_to root_url
      end
    end

def set_user
      @user = User.find(params[:id])
end

def user_params
      params.require(:user).permit( :avatar, :description)
    end
end

