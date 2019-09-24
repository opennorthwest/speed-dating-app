class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      # DEMOGRAPHICS
      t.string :display_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :gender
      t.string  :location
      t.boolean :friend_dates
      t.string :referral
      t.boolean :stationary
      t.boolean :email_list
      t.string :comments

      t.boolean :not_in_primary
      t.integer :primary_interest
      t.boolean :dates_groups
      t.boolean :must_match_whole_group

      t.boolean :kinky
      t.integer :kink_interest
      t.boolean :kink_top
      t.boolean :kink_bottom
      t.boolean :kink_switch
      t.boolean :kink_neither
      t.boolean :kink_unsure



      # TARGET
      t.integer :target_age_floor
      t.integer :target_age_ceiling
      t.integer :target_gender_tw
      t.integer :target_gender_tm
      t.integer :target_gender_cw
      t.integer :target_gender_cm
      t.integer :target_gender_nb
      t.integer :target_gender_na

      t.integer :target_opento_tw
      t.integer :target_opento_tm
      t.integer :target_opento_cw
      t.integer :target_opento_cm
      t.integer :target_opento_nb
      t.integer :target_opento_na

      t.boolean :target_kinky
      t.boolean :target_kink_top
      t.boolean :target_kink_bottom
      t.boolean :target_kink_switch
      t.boolean :target_kink_neither
      t.boolean :target_kink_unsure

      t.boolean :target_is_group

      t.string :target_location

      t.timestamps
    end
  end
end
