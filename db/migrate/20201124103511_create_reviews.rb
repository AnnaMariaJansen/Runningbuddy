class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :meeting
      t.references :user
      t.integer :vibe_rating
      t.integer :route_rating
      t.integer :challenge_rating

      t.timestamps
    end
  end
end
