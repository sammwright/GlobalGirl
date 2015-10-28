class SafeSpace < ActiveRecord::Base
has_many :safe_space_experience_types
has_many :experience_types, through: :safe_space_experience_types
end
