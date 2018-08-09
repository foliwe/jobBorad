class AddUserIdToEmployemtHistories < ActiveRecord::Migration[5.1]
  def change
    add_column :employment_histories, :user_id, :integer
  end
end
