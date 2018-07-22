class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :job_reference
      t.string :employer
      t.string :department
      t.string :pay_scheme
      t.decimal :salary_from, precision:8,scale:2
      t.decimal :salary_to, precision:8,scale:2
      t.string :email
      t.string :telephone
      t.string :contact_name
      t.string :function
      t.string :job_type ,default:"Negotiable"
      t.text :description
      t.text :note
      t.datetime :closing_date

      t.timestamps
    end
  end
end
