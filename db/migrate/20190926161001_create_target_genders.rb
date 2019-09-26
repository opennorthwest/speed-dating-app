class CreateTargetGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :target_genders, index: false do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :gender, foreign_key: true

      t.timestamps
    end
  end
end
