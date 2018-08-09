class CreateQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifications do |t|
      t.datetime :date_obtained
      t.string :certificate_obtained

      t.timestamps
    end
  end
end
