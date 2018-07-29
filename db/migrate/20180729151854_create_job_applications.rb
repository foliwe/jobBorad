class CreateJobApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :job_applications do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.string :applicant_name

      t.timestamps
    end
  end
end
