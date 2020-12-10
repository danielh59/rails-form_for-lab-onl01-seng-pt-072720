class StudentsController < ApplicationController

  def index
		@students = Post.all
	end

	def show
		@student = Post.find(params[:id])
	end

	def new
		@student = Post.new
	end

	def create
    @student = Post.new(student_params(:title, :description))
	  @student.save
	  redirect_to student_path(@student)
	end

	def update
	  @student = Post.find(params[:id])
    @student.update(post_params(:title))
	  redirect_to student_path(@student)
	end

	def edit
	  @student = Post.find(params[:id])
	end

  private

 def student_params(*args)
   params.require(:student).permit(*args)
 end
end
