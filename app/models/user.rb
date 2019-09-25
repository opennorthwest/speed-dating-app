class User < ApplicationRecord
  has_many :user_locations
  has_many :locations, through: :user_locations
  has_and_belongs_to_many :events
end
