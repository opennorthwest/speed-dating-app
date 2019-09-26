class AddForeignKeyForKinkInterest < ActiveRecord::Migration[5.2]
  def change
     add_foreign_key :users, :kink_interests
  end
end
