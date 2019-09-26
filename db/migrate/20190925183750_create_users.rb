class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      # t.boolean :is_a_group
      # t.integer :group_id

      # DEMOGRAPHICS
      t.string :display_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :email_list
      t.string :referral
      t.string :comments
      t.integer :age
      t.integer :gender_id
      t.boolean :kinky
      t.integer :kink_interest_id
      t.integer :kink_role_id
      t.boolean :dates_groups
      t.boolean :must_match_whole_group
      t.boolean :friend_dates
      t.boolean :stationary


      # # TARGET
      t.integer :target_age_floor
      t.integer :target_age_ceiling

      # t.integer :target_gender
      #
      # t.integer :target_opento_tw
      # t.integer :target_opento_tm
      # t.integer :target_opento_cw
      # t.integer :target_opento_cm
      # t.integer :target_opento_nb
      # t.integer :target_opento_na
      #
      # t.boolean :target_kinky
      # t.boolean :target_kink_top
      # t.boolean :target_kink_bottom
      # t.boolean :target_kink_switch
      # t.boolean :target_kink_neither
      # t.boolean :target_kink_unsure
      #
      # t.boolean :target_is_group
      #
      # t.string :target_location

      t.timestamps
    end
  end
end
