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
	  @post = Post.find(params[:id])
    @post.update(post_params(:title))
	  redirect_to post_path(@post)
	end

	def edit
	  @post = Post.find(params[:id])
	end

  private

 def post_params(*args)
   params.require(:post).permit(*args)
 end
end
