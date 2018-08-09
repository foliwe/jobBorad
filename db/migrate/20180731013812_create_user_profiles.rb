class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :mobile
      t.string :family_name
      t.string :first_name
      t.string :middle_name
      t.string :ni_number
      t.string :address
      t.string :town
      t.string :state
      t.string :country
      t.string :zip_code
      t.string :phone

      t.timestamps
    end
  end
end
