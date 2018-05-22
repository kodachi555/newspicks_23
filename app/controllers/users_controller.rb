class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @picks = @user.picks.all
    @like_count = @picks.sum(:likes_count)
  end

  def following
    @user = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to "/settings/profile"
  end

  def user_params
      params.require(:user).permit(:username, :email, :password,
                                   :password_confirmation, :company, :position, :avatar)
    end
end
