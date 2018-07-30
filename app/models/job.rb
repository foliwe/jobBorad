class Job < ApplicationRecord
  has_many :job_applications
  validate :limit_user_to_one_job_application

  private

  def limit_user_to_one_job_application
    if user.job_applicaitons.count > 1
      self.errors.add(:base, "You can only have one job application")
    end
  end
end
