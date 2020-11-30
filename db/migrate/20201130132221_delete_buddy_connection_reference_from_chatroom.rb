class DeleteBuddyConnectionReferenceFromChatroom < ActiveRecord::Migration[6.0]
  def change
    remove_column :chatrooms, :buddy_connections_id
  end
end
