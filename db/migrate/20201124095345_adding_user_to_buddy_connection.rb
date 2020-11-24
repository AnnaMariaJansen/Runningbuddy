class AddingUserToBuddyConnection < ActiveRecord::Migration[6.0]
  def change
    add_column :buddy_connections, :user_1_id, :integer
    add_column :buddy_connections, :user_2_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
