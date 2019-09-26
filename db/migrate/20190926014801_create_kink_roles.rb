class CreateKinkRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :kink_roles do |t|
      t.string :kink_role
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
