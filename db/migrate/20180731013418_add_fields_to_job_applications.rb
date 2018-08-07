class AddFieldsToJobApplications < ActiveRecord::Migration[5.1]
  def change
    add_column :job_applications, :where_did_to_see_vacancy, :string
  end
end
