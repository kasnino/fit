class PostsController < ApplicationController
 # before_action :set_post, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, except: [:index, :show]

def new
	@post = current_user.posts.build
  @categories = Category.all.map { |c| [c.name, c.id]  }
end

def create

  @post = current_user.posts.build(post_params)
  @post.category_id = params[:category_id]
  
  # @post.categories = post_params[:categories]
    if @post.save
	    redirect_to @post
	  else
	    render 'new'
	  end
  end

def show
  @post = Post.find(params[:id])
    @comments = Comment.where(post_id:@post).order("created_at DESC")
end

def index
  if params[:tag]
    @posts = Post.tagged_with(params[:tag])
  else  
    @posts = Post.all
    @posts = Post.order('created_at DESC').paginate(page: params[:page],per_page:5)
  end
    #@posts = Post.order(name: :asc).paginate(page: params[:page],per_page:10)
 
end

def edit
  @post = Post.find(params[:id])
  @categories = Category.all.map { |c| [c.name, c.id]  }
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
 
  redirect_to root_path
end

private
  def post_params
    params.require(:post).permit(:title, :text, :imagen, :all_tags, :category_ids)
  end

def category_params
    params.permit(:category_id)

end

end
