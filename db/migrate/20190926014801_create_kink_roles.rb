class CreateKinkRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :kink_roles do |t|
      t.string :kink_role
      t.timestamps
    end
  end
end
