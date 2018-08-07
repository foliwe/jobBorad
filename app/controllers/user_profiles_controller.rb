class UserProfilesController < ApplicationController

before_action :authenticate_user!

  def show

  @user = UserProfile.find(params[:user_id])
  end


  def edit
      @user = User.find(params[:user_id])
      @profile = @user.user_profile

  end
end
