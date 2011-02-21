class UserPractice < ActiveRecord::Base
  belongs_to :practice_unit
  belongs_to :practice
  belongs_to :user

  has_many :goals
end
