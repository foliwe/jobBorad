class UserProfilesController < ApplicationController

before_action :authenticate_user!

def new


end

  def show

    # @user = UserProfile.find(params[:user_id])
    @profile = current_user.user_profile
  end


  def edit
      # @user = User.find(params[:user_id])
      @profile = current_user.user_profile

  end

  def update
    # byebug
      @profile = current_user.user_profile
    respond_to do |format|
      if @profile.update profile_params
        format.html { redirect_to user_user_profile_path, notice: "Profile updated!" }
        format.json { render :edit, status: :ok, location: @profile }
      else
        format.html { redirect_to edit_user_user_profile_path, flash: { error: "Profile could not be updated!" } }
        format.json { render json: @profile.errors.messages, status: :unprocessable_entity }
      end
    end
  end

  private
  def profile_params
    params.require(:user_profile).permit(
          :title,
          :phone,
          :address,
          :zip_code,
          employment_histories_attributes: [:id, :job_title, :employer, :_destroy],
          qualifications_attributes: [:id, :certificate_obtained, :date_obtained, :_destroy]
        )
  end
end
