class KinkRole < ApplicationRecord
  has_many :users, through: :target_kink_roles
  has_many :target_kink_roles
end
