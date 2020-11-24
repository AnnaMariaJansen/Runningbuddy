class CreateBuddyConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :buddy_connections do |t|

      t.timestamps
    end
  end
end
