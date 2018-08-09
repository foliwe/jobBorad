class RemoveFieldFromJobApplications < ActiveRecord::Migration[5.1]
  def change
    remove_column :job_applications, :applicant_name, :string
  end
end
