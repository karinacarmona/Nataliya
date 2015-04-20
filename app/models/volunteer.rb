class Volunteer < ActiveRecord::Base
  has_many :educations
  has_many :work_experiences
  accepts_nested_attributes_for :educations
  accepts_nested_attributes_for :work_experiences
end
