class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :start
      t.datetime :finish
      t.boolean :published


      t.timestamps
    end
  end
end
