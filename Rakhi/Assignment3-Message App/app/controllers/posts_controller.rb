class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.user.new(post_params)

  	if @post.save
  	  redirect_to root_path
  	else
  	  redirect_to root_path
  	end
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])

  	if @post.update(post_params)
  	  redirect_to @post, notice: "Post successfully updated!"
  	else
      flash.now[:alert] = "Invalid input, post update failed..."
  	  render :edit
  	end
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy

  	redirect_to root_path, notice: "Post successfully deleted!"
  end

  private
  	def post_params
  	  params.require(:post).permit(:title, :body)
  	end
end
