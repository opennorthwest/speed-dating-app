class CreateKinkInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :kink_interests do |t|
      t.string :kink_interest
      t.timestamps
    end
  end
end
