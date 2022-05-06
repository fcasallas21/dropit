class PostsController < ApplicationController
  def index
    @posts=Post.all
  end

  def edit
    @posts=Post.find(params[:id])
  end

  def new
    @post=Post.new
  end

  def update
    @posts=Post.find(params[:id])
    if @product.update(post_params)
        redirect_to post_path, notice: 'Your img has been updated successfully'    
    else
       render :edit, status: :unprocessable_entity
    end


  private
  def post_params
    params.require(:post).permit(:file)
  end

end
