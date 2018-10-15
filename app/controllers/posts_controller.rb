class PostsController < ApplicationController
 # before_action :set_post, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, except: [:index, :show]

def new
	@post = current_user.posts.build
  @categories = Category.all
end

def create

  @post = current_user.posts.build(post_params)
  @post.categories = category_params
  # @post.categories = post_params[:categories]
    if @post.save
	    redirect_to @post
	  else
	    render 'new'
	  end
  end

def show
  @post = Post.find(params[:id])

end

def index
  if params[:tag]
    @posts = Post.tagged_with(params[:tag])
  else  
    @posts = Post.all
    @posts = Post.order('created_at DESC').paginate(page: params[:page],per_page:9)
  end
    #@posts = Post.order(name: :asc).paginate(page: params[:page],per_page:10)
 
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
 
  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end
end
 

 def destroy
  @post = Post.find(params[:id])
  @post.destroy
 
  redirect_to posts_path
end

private
  def post_params
    params.require(:post).permit(:title, :text, :imagen, :all_tags, :categories)
  end

def category_params
    params.require(:category_ids)

end

end
