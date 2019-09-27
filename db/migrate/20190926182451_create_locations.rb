class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :location
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
