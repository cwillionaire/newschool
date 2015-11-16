class CohortsController < ApplicationController
	def new
		@cohort = Cohort.new
		@students = Student.all
	end

	def edit
		@students = Student.all
	end

	def create
		@cohort = Cohort.new(cohort_params)
		@students = Student.all
	end

	private
	def cohort_params
    	params.require(:cohort).permit(:subject, :student, :student_id, :teacher_id)
 	end



end
