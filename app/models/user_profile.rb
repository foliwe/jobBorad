class UserProfile < ApplicationRecord
  has_many :employment_histories
  has_many :qualifications
  accepts_nested_attributes_for :employment_histories,allow_destroy: true, reject_if: ->(attrs) { attrs['job_title'].blank? || attrs['employer'].blank? }
  accepts_nested_attributes_for :qualifications,allow_destroy: true, reject_if: ->(attrs) { attrs['certificate_obtained'].blank? || attrs['date_obtained'].blank? }


end
