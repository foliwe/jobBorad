class EmploymentHistory < ApplicationRecord
  belongs_to :user ,dependent: :destroy,optional: true
  belongs_to :user_profile , dependent: :destroy,optional: true
end
