class AddUserIdToErrors < ActiveRecord::Migration[6.0]
  def change
    add_column :errors, :user_id, :integer
  end
end
