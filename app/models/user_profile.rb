class UserProfile < ApplicationRecord
  belongs_to :user
  def save_on_update
   return false unless valid_for_activation?
   save!
 end

 def valid_for_activation?
   valid? # run all validations
   errors.add(:first_name, "cannot be blank") if first_name.blank?
   errors.empty?
 end
end