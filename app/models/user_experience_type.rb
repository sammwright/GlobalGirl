class UserExperienceType < ActiveRecord::Base
  belongs_to :user
  belongs_to :experience_type
end
