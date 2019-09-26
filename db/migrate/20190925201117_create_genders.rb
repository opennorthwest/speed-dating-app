class CreateGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :genders do |t|
      t.string :gender
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
