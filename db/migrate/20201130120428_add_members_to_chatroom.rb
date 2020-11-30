class AddMembersToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :buddy_connections, foreign_key: true
  end
end
