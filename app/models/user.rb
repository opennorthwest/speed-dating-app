class User < ApplicationRecord
  has_one :gender
  has_one :kink_interest
  has_one :kink_role

  has_many :user_locations
  has_many :locations, through: :user_locations

  has_many :target_genders
  has_many :genders, through: :target_genders

  has_many :target_kink_roles
  has_many :kink_roles, through: :target_kink_roles
  
  has_and_belongs_to_many :events
end
