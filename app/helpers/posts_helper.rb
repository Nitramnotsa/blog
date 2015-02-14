module PostsHelper
	def new_comment(post)
		post.comments.build
    end	
end
