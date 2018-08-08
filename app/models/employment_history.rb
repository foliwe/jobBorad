class EmploymentHistory < ApplicationRecord
  belongs_to :user ,dependent: :destroy
  belongs_to :user_profile , dependent: :destroy
end
