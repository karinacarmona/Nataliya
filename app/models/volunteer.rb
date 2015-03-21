class Volunteer < ActiveRecord::Base
  has_many :educations
  has_many :work_experiences
end
