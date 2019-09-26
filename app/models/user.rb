class User < ApplicationRecord
  has_one :gender
  has_one :kink_interest
  has_one :kink_role
  has_many :target_genders
  has_many :user_locations
  has_many :locations, through: :user_locations
  has_many :genders, through: :target_genders
end
