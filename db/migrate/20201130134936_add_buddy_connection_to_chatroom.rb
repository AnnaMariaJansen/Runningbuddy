class AddBuddyConnectionToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :buddy_connection, foreign_key: true
  end
end
