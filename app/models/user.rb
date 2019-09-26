class User < ApplicationRecord
  has_one :gender
  has_one :kink_interest
  has_one :kink_role
end
