class Cohort < ActiveRecord::Base
	has_many :students
	validates :subject, presence: true
	validates :student_id, presence: true
end
