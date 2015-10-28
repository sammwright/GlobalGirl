class SafeSpaceExperienceType < ActiveRecord::Base
  belongs_to :safe_space
  belongs_to :experience_type
end
