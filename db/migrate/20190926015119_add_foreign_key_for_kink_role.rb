class AddForeignKeyForKinkRole < ActiveRecord::Migration[5.2]
  def change
       add_foreign_key :users, :kink_roles
  end
end
