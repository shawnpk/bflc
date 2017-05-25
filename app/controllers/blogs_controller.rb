class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      flash[:notice] = 'Your content has been created'
      redirect_to @blog
    else
      flash[:alert] = 'There was a problem creating your content'
      render :new
    end
  end

  def update
    @blog.update(blog_params)

    if @blog.save
      flash[:notice] = 'Your content has been updated'
      redirect_to @blog
    else
      flash[:alert] = 'There was a problem updating your content'
      render :edit
    end
  end

  def destroy
    @blog.destroy

    flash[:notice] = "You have deleted #{@blog.title}"
    redirect_to blogs_path
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :body)
    end

    def set_blog
      @blog = Blog.find(params[:id])
    end
end
