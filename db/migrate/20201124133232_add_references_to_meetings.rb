class AddReferencesToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_reference :meetings, :user, foreign_key: true
    add_reference :meetings, :run, foreign_key: true
  end
end
