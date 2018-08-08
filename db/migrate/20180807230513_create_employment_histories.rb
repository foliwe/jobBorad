class CreateEmploymentHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :employment_histories do |t|
      t.string :employer
      t.string :job_title
      t.datetime :start_date
      t.datetime :end_date
      t.string :left_bco

      t.timestamps
    end
  end
end
