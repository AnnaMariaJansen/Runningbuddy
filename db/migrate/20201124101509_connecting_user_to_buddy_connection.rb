class ConnectingUserToBuddyConnection < ActiveRecord::Migration[6.0]
  def change
    add_index :buddy_connections, :user_1_id
    add_index :buddy_connections, :user_2_id
  end
end
