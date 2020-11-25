class AddUserIdToRun < ActiveRecord::Migration[6.0]
  def change
    add_reference :runs, :user, foreign_key: true
  end
end
