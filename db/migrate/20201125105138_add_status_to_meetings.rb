class AddStatusToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :status, :string, null: false, default: "pending"
  end
end
