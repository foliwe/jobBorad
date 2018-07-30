class HomeController < ApplicationController

  def index
    @jobs = Job.all
  end

  def result
    if params[:search].present? && params[:search].strip != ""
      session[:loc_search] = params[:search]
      @param_s = session[:loc_search]
    end

    if @param_s && @param_s != ""
        @jobs_search = Job.where("pay_scheme = ?", @param_s)
      else
        @jobs_search = Job.all
    end
    @search = @jobs_search.ransack(params[:q])
    @jobs = @search.result
    @arrjob = @jobs.to_a
  end


  def search
    @search = Job.ransack(params[:q])
    @job = @search.result
  end
end
