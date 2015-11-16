class TopicController < ApplicationController
	
	before_filter :authenticate_teacher!

	def create
		@topic = Topic.new(topic_params)

		respond_to do |format|
			if @topic.save
				format.html { redirect_to @topic, notice: 'Class is now in session...'}
			else
				format.html { render :new}
			end
		end
	end
	def new
		@topic = Topic.new
	end
	def edit
	end

	def show
		@topic = Topic.new
	end

	def index
		@topic = Topic.all
	end

	def update
		respond_to do |format|
			if @topic.update(topic_params)
				format.html {redirect_to @topic, notice: 'Topic was updated! Rock On!!'}
			else
				format.html { render :edit }
			end
		end
	end
	def destroy
      @topic.destroy
    respond_to do |format|
      format.html { redirect_to topics_url, notice: 'Topic was successfully destroyed.' }
    end
  end


private

	def topic_params
    	params.require(:topic).permit(:subjectx, :student_id, :teacher_id)
 	end


end
end
