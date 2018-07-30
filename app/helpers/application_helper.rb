module ApplicationHelper

  def render_link(job)
      if !JobApplication.where(user: current_user, job: job).exists?
      link_to'Apply For Job',new_job_job_application_path(job),class:"btn btn-success  btn-block"
    elsif !user_signed_in?

      content_tag :div, class: "btn btn-success btn-block" do
      link_to "Apply For Job",new_job_job_application_path(job)
    end
   else
      content_tag :div, class: "btn btn-warning  btn-block" do
      link_to "Edit Job Application"
    end
  end
end
end
