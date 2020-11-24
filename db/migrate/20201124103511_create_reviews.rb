class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :meeting
      t.references :user
      t.string :vibe_rating
      t.string :route_rating
      t.string :challenge_rating

      t.timestamps
    end
  end
end
