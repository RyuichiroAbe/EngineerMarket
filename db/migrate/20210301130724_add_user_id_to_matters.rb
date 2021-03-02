class AddUserIdToMatters < ActiveRecord::Migration[5.2]
  def change
    add_column :matters, :user_id, :integer
  end
end
