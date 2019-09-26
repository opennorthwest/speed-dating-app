class CreateTargetKinkRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :target_kink_roles do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :kink_role, foreign_key: true

      t.timestamps
    end
  end
end
