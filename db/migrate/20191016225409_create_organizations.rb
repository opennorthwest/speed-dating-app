class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :title
      t.string :city
      t.string :state
      t.timestamps
    end
  end
end
