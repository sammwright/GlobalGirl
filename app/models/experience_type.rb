class ExperienceType < ActiveRecord::Base
has_many :user_experience_types
has_many :users, through: :user_experience_types
has_many :safe_space_experience_types
has_many :safe_spaces, through: :safe_space_experience_types
end
