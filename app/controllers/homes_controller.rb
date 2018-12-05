class HomesController < ApplicationController
  def show
  	 @posts = Post.all
  	 @posts = Post.order('created_at DESC').paginate(page: params[:page],per_page:8)
  end




end
