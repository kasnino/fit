class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]



  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(comment_params)
  	@comment.user_id = current_user.id
  	@comment.save

  	if @comment.save
  	redirect_to post_path(@post)
  else
  	render 'new'
  end
  end

  def destroy
  	@post = Post.find(params[:article_id])
  	@comment = @post.comments.find(params[:id])
  	@comment.destroy
  	redirect_to post_path(@post)
  end

  private
  def comment_params
  	params.require(:comment).permit(:commenter, :body)
  end

end

