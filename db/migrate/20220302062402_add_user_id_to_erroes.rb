class AddUserIdToErroes < ActiveRecord::Migration[6.0]
  def change
    add_column :erroes, :user_id, :integer
  end
end
