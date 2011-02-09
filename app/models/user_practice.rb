class UserPractice < ActiveRecord::Base
  belongs_to :practice_units
  belongs_to :practice
  belongs_to :user
end
