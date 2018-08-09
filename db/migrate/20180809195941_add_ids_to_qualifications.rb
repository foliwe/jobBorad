class AddIdsToQualifications < ActiveRecord::Migration[5.1]
  def change
    add_column :qualifications, :user_id, :integer
    add_column :qualifications, :user_profile_id, :integer
  end
end
