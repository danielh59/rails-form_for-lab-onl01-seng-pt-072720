class SchoolClasses < ApplicationController
	def index
		@school_classes = Post.all
	end

	def show
		@school_class = Post.find(params[:id])
	end

	def new
		@school_class = Post.new
	end

	def create
    @school_class = Post.new(post_params(:title, :description))
	  @school_class.save
	  redirect_to post_path(@school_class)
	end

	def update
	  @school_class = Post.find(params[:id])
    @school_class.update(school_class_params(:title))
	  redirect_to school_class_path(@school_class)
	end

	def edit
	  @school_class = Post.find(params[:id])
	end

  private

 def school_class_params(*args)
   params.require(:school_class).permit(*args)
 end
end
