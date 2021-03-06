class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def destroy

	end


private

	def post_params
		params.require(:post).permit(:title, :text)
	end

end
