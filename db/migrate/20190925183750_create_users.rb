class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      # t.boolean :is_a_group
      # t.integer :group_id

      # DEMOGRAPHICS
      t.string :display_name
      t.string :first_name
      t.string :last_name
      t.boolean :email_list
      t.string :referral
      t.string :comments
      t.integer :age
      t.integer :gender_id
      t.boolean :kinky
      t.integer :kink_interest_id
      t.integer :kink_role_id
      t.integer :target_kink_role
      t.boolean :dates_groups
      t.boolean :must_match_whole_group
      t.boolean :friend_dates
      t.boolean :stationary


      # # TARGET
      t.integer :target_age_floor
      t.integer :target_age_ceiling
      t.timestamps
    end
  end
end
