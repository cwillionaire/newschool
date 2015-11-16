class StudentsController < ApplicationController

	before_action :set_student, only: [:show, :edit, :update, :destroy]

	before_filter :authenticate_teacher!

	def create
		@student = Student.new(student_params)

		respond_to do |format|
			if @student.save
				format.html { redirect_to @student, notice: 'Class is now in session...'}
			else
				format.html { render :new}
			end
		end
	end
	def new
		@student = Student.new
		@cohorts = Cohort.all
	end
	def edit
		@cohorts = Cohort.all
	end

	def show
		@topic = Topic.new
	end

	def index
		@student = Student.all
	end

	def update
		respond_to do |format|
			if @student.update(student_params)
				format.html {redirect_to @student, notice: 'Student was updated! Rock On!!'}
			else
				format.html { render :edit }
			end
		end
	end
	def destroy
      @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
    end
  end


private

	def set_student
      @student = Student.find(params[:id])
    end
	def student_params
    	params.require(:student).permit(:name, :acayear, :teacher_id, :cohort, :cohort_id, :rating, :avatar)
 	end


end
