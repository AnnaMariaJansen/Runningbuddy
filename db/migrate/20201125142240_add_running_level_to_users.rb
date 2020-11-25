class AddRunningLevelToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :running_level, :integer
  end
end
