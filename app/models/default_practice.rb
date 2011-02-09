class DefaultPractice < ActiveRecord::Base
  belongs_to :practice_unit
  belongs_to :practice
end
