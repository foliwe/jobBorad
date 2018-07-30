class JobApplicationsController < ApplicationController

before_action :authenticate_user!

def index
  @job_applications = current_user.job_applications.all
end
  def new
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.create


  end

  def create
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.create(job_application_params)
    @job_application.user_id = current_user.id
    if @job_application.save
      flash[:success] = "Thanks For you application!"
      redirect_to job_path(@job)
    else
      flash[:alert] = "something went wrong with your application."
      redirect_to root_path
    end
  end



  private

  def job_application_params
    params.require(:job_application).permit(:job_id,:applicant_name)
  end
end
