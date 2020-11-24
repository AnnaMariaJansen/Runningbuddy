class CreateRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :runs do |t|
      t.string :route
      t.string :length
      t.string :pace
      t.string :duration
      t.string :location
      t.float :latitude
      t.float :longitude
      t.date :date
      t.references :parent, index: true, foreign_key: { to_table: :runs }

      t.timestamps
    end
  end
end
