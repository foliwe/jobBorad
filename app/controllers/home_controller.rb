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
    # @search = @listing_search.ransack(params[:q])
    # @listing = @search.result.page( params[:page]).per(15)
    # @arrlisting = @listing.to_a
  end
end
