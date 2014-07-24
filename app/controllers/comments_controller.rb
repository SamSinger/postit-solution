class CommentsController < ApplicationController

  def create
  	@post = Post.find(params[:post_id])
  	@comment = @Post.comments.new(params.require(:comment).permit(:body))

  	if @comment.save
  		flash[:notice] = "The comment was saved!"
  		redirect_to post_path(@post)
  	else
  		render 'post/show'
  	end	
  end
end  
