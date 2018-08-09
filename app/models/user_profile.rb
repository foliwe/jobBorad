class UserProfile < ApplicationRecord
  has_many :employment_histories
  accepts_nested_attributes_for :employment_histories,allow_destroy: true, reject_if: ->(attrs) { attrs['job_title'].blank? || attrs['employer'].blank? }


end
