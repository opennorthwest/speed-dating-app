class AddForeignKeyForGenders < ActiveRecord::Migration[5.2]
  def change
     add_foreign_key :users, :genders
  end
end
