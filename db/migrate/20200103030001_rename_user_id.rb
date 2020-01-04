class RenameUserId < ActiveRecord::Migration[6.0]
  def change
    rename_column :cars, :user_id, :seller_id
  end
end
