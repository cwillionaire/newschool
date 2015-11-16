class ProfilesController < ApplicationController
  def show
  	@teacher = Teacher.find(params[:id])
  end

  def index
  	@teachers = Teacher.all
  end
end
