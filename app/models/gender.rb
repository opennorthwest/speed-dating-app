class Gender < ApplicationRecord
has_many :users, through: :target_genders
has_many :target_genders
end
